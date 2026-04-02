import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../../../../core/widgets/game_stats_display.dart';
import '../../domain/entities/find_pair_card_model.dart';
import '../bloc/find_pair_bloc.dart';

class FindPairGamePage extends StatefulWidget {
  final int rows;
  final int cols;

  const FindPairGamePage({
    super.key,
    required this.rows,
    required this.cols,
  });

  @override
  State<FindPairGamePage> createState() => _FindPairGamePageState();
}

class _FindPairGamePageState extends State<FindPairGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FindPairBloc()..add(FindPairEvent.start(rows: widget.rows, cols: widget.cols)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindPairBloc, FindPairState>(
      listenWhen: (prev, curr) =>
          prev.phase != FindPairPhase.completed && curr.phase == FindPairPhase.completed,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: true,
          time: state.playTime,
          mistakes: state.mistakes,
          onRestart: () {
            context.read<FindPairBloc>().add(const FindPairEvent.restart());
          },
          gameType: 'find_pair',
          rows: state.rows,
          cols: state.cols,
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  GameAppBar(
                    onRestart: () {
                      context.read<FindPairBloc>().add(const FindPairEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (state.phase == FindPairPhase.preview) ...[
                                Text(
                                  context.appLocale.memorize,
                                  style: context.textStyles.bodySmall?.copyWith(
                                    color: context.colors.warning,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '${state.previewTimeLeft}',
                                  style: context.textStyles.displayMedium?.copyWith(
                                    color: context.colors.warning,
                                  ),
                                ).animate(
                                  onPlay: (c) => c.repeat(),
                                ).scale(
                                  begin: const Offset(1, 1),
                                  end: const Offset(1.1, 1.1),
                                  duration: 500.ms,
                                ).then().scale(
                                  begin: const Offset(1.1, 1.1),
                                  end: const Offset(1, 1),
                                  duration: 500.ms,
                                ),
                              ] else
                                GameStatsDisplay(
                                  mistakes: state.mistakes,
                                  time: state.playTime,
                                ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: AspectRatio(
                              aspectRatio: state.cols / state.rows,
                              child: GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: state.cols,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8,
                                ),
                                itemCount: state.cards.length,
                                itemBuilder: (context, index) {
                                  final card = state.cards[index];
                                  return _FlipCard(
                                    card: card,
                                    onTap: () {
                                      context.read<FindPairBloc>().add(
                                        FindPairEvent.flipCard(index),
                                      );
                                    },
                                  );
                                },
                              ),
                            ).animate().fadeIn().scale(
                              begin: const Offset(0.95, 0.95),
                              curve: Curves.easeOut,
                            ),
                          ),
                        ),
                        const SizedBox(width: 120),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _FlipCard extends StatelessWidget {
  final FindPairCardModel card;
  final VoidCallback onTap;

  const _FlipCard({
    required this.card,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: card.isFlipped || card.isMatched ? null : onTap,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        transitionBuilder: (child, animation) {
          return RotationYTransition(
            turns: animation,
            child: child,
          );
        },
        child: card.isFlipped || card.isMatched
            ? _CardFront(
                key: ValueKey('front-${card.id}'),
                emoji: card.emoji,
                isMatched: card.isMatched,
              )
            : _CardBack(key: ValueKey('back-${card.id}')),
      ),
    );
  }
}

class RotationYTransition extends AnimatedWidget {
  final Widget child;

  const RotationYTransition({
    super.key,
    required Animation<double> turns,
    required this.child,
  }) : super(listenable: turns);

  Animation<double> get turns => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    final angle = turns.value * 3.14159;
    final isFrontVisible = angle <= 3.14159 / 2;
    return Transform(
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001)
        ..rotateY(angle),
      alignment: Alignment.center,
      child: isFrontVisible
          ? child
          : Transform(
        transform: Matrix4.identity()..rotateY(3.14159),
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}

class _CardFront extends StatelessWidget {
  final String emoji;
  final bool isMatched;

  const _CardFront({
    super.key,
    required this.emoji,
    required this.isMatched,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isMatched ? context.colors.success.withOpacity(0.3) : context.colors.cardFront,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: isMatched ? context.colors.success : context.colors.surfaceLight,
          width: 2,
        ),
        boxShadow: [
          BoxShadow(
            color: (isMatched ? context.colors.success : context.colors.primary).withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Text(
          emoji,
          style: TextStyle(
            fontSize: context.screenHeight * 0.06,
          ),
        ),
      ),
    );
  }
}

class _CardBack extends StatelessWidget {
  const _CardBack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: context.colors.primaryGradient,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: context.colors.primary.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Icon(
          Icons.question_mark_rounded,
          color: Colors.white.withOpacity(0.5),
          size: 32,
        ),
      ),
    );
  }
}
