import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../../../../core/widgets/game_stats_display.dart';
import '../../domain/gorbov_number_model.dart';
import '../bloc/gorbov_bloc.dart';

class GorbovGamePage extends StatefulWidget {
  final int rows;
  final int cols;

  const GorbovGamePage({
    super.key,
    required this.rows,
    required this.cols,
  });

  @override
  State<GorbovGamePage> createState() => _GorbovGamePageState();
}

class _GorbovGamePageState extends State<GorbovGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GorbovBloc>()..add(GorbovEvent.start(rows: widget.rows, cols: widget.cols)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GorbovBloc, GorbovState>(
      listenWhen: (prev, curr) => !prev.isCompleted && curr.isCompleted,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: true,
          time: state.time,
          mistakes: state.mistakes,
          onRestart: () {
            context.read<GorbovBloc>().add(const GorbovEvent.restart());
          },
          gameType: 'gorbov_schulte',
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
                      context.read<GorbovBloc>().add(const GorbovEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 140,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GameStatsDisplay(
                                mistakes: state.mistakes,
                                time: state.time,
                              ),
                              const SizedBox(height: 24),
                              _ExpectedNumber(
                                value: state.expectingBlack
                                    ? state.currentBlack
                                    : state.currentRed,
                                isBlack: state.expectingBlack,
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
                                  crossAxisSpacing: 4,
                                  mainAxisSpacing: 4,
                                ),
                                itemCount: state.numbers.length,
                                itemBuilder: (context, index) {
                                  final number = state.numbers[index];
                                  final key = '${number.color.name}-${number.value}';
                                  final isFound = state.foundNumbers.contains(key);

                                  return _NumberCell(
                                    number: number,
                                    isFound: isFound,
                                    onTap: isFound
                                        ? null
                                        : () {
                                            context.read<GorbovBloc>().add(
                                              GorbovEvent.selectNumber(number),
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

class _ExpectedNumber extends StatelessWidget {
  final int value;
  final bool isBlack;

  const _ExpectedNumber({
    required this.value,
    required this.isBlack,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isBlack ? context.colors.blackNumber : context.colors.redNumber,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: (isBlack ? context.colors.blackNumber : context.colors.redNumber)
                .withOpacity(0.4),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            isBlack ? '↑' : '↓',
            style: context.textStyles.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          Text(
            '$value',
            style: context.textStyles.displaySmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ).animate(
      onPlay: (controller) => controller.repeat(reverse: true),
    ).scale(
      begin: const Offset(1, 1),
      end: const Offset(1.05, 1.05),
      duration: 800.ms,
    );
  }
}

class _NumberCell extends StatelessWidget {
  final GorbovNumber number;
  final bool isFound;
  final VoidCallback? onTap;

  const _NumberCell({
    required this.number,
    required this.isFound,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isBlack = number.color == NumberColor.black;
    final bgColor = isBlack ? context.colors.cardFront : context.colors.redNumber;
    final textColor = isBlack ? context.colors.blackNumber : Colors.white;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: context.colors.surfaceLight,
            width: 2,
          ),
        ),
        child: Center(
          child: Text(
            '${number.value}',
            style: context.textStyles.titleLarge?.copyWith(
              color: textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
