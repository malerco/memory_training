import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../bloc/memory_matrix_bloc.dart';

class MemoryMatrixGamePage extends StatefulWidget {
  const MemoryMatrixGamePage({super.key});

  @override
  State<MemoryMatrixGamePage> createState() => _MemoryMatrixGamePageState();
}

class _MemoryMatrixGamePageState extends State<MemoryMatrixGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MemoryMatrixBloc()..add(const MemoryMatrixEvent.start()),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MemoryMatrixBloc, MemoryMatrixState>(
      listenWhen: (prev, curr) =>
          prev.phase != MatrixPhase.completed && curr.phase == MatrixPhase.completed,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: state.mistakes <= 2,
          time: state.totalTime,
          mistakes: state.mistakes,
          onRestart: () {
            context.read<MemoryMatrixBloc>().add(const MemoryMatrixEvent.restart());
          },
          gameType: 'memory_matrix',
          gridSize: state.gridSize,
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
                      context.read<MemoryMatrixBloc>().add(const MemoryMatrixEvent.restart());
                    },
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (state.phase == MatrixPhase.playing)
                          ElevatedButton.icon(
                            onPressed: () {
                              context.read<MemoryMatrixBloc>().add(const MemoryMatrixEvent.submit());
                            },
                            icon: const Icon(Icons.check_rounded),
                            label: Text(context.appLocale.confirm),
                          ),
                      ],
                    ),
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
                              Text(
                                context.appLocale.round,
                                style: context.textStyles.bodySmall?.copyWith(
                                  color: context.colors.textSecondary,
                                ),
                              ),
                              Text(
                                '${state.currentRound}/${state.totalRounds}',
                                style: context.textStyles.headlineMedium?.copyWith(
                                  color: context.colors.primary,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                context.appLocale.mistakes,
                                style: context.textStyles.bodySmall?.copyWith(
                                  color: context.colors.textSecondary,
                                ),
                              ),
                              Text(
                                '${state.mistakes}',
                                style: context.textStyles.headlineMedium?.copyWith(
                                  color: context.colors.error,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                context.appLocale.time,
                                style: context.textStyles.bodySmall?.copyWith(
                                  color: context.colors.textSecondary,
                                ),
                              ),
                              Text(
                                '${state.totalTime}',
                                style: context.textStyles.headlineMedium,
                              ),
                              if (state.phase == MatrixPhase.memorizing) ...[
                                const SizedBox(height: 24),
                                Text(
                                  context.appLocale.memorize,
                                  style: context.textStyles.bodySmall?.copyWith(
                                    color: context.colors.warning,
                                  ),
                                ),
                                Text(
                                  '${state.memorizeTimeLeft}',
                                  style: context.textStyles.displaySmall?.copyWith(
                                    color: context.colors.warning,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: context.colors.surface,
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                      color: context.colors.primary.withOpacity(0.3),
                                      width: 2,
                                    ),
                                  ),
                                  padding: const EdgeInsets.all(8),
                                  child: GridView.builder(
                                    physics: const NeverScrollableScrollPhysics(),
                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: state.gridSize,
                                      crossAxisSpacing: 6,
                                      mainAxisSpacing: 6,
                                    ),
                                    itemCount: state.gridSize * state.gridSize,
                                    itemBuilder: (context, index) {
                                      final isTarget = state.targetCells.contains(index);
                                      final isSelected = state.userCells.contains(index);
                                      final showTarget = state.phase == MatrixPhase.memorizing ||
                                          state.phase == MatrixPhase.roundResult;

                                      return _MatrixCell(
                                        isHighlighted: showTarget ? isTarget : isSelected,
                                        isCorrect: state.phase == MatrixPhase.roundResult
                                            ? isTarget
                                            : null,
                                        isUserSelected: state.phase == MatrixPhase.roundResult
                                            ? isSelected
                                            : null,
                                        onTap: state.phase == MatrixPhase.playing
                                            ? () {
                                                context.read<MemoryMatrixBloc>().add(
                                                  MemoryMatrixEvent.toggleCell(index),
                                                );
                                              }
                                            : null,
                                      );
                                    },
                                  ),
                                ),
                              ).animate().fadeIn().scale(
                                begin: const Offset(0.95, 0.95),
                                curve: Curves.easeOut,
                              ),
                              if (state.phase == MatrixPhase.roundResult)
                                _RoundResultOverlay(
                                  isCorrect: state.roundCorrect,
                                  onNext: () {
                                    context.read<MemoryMatrixBloc>().add(
                                      const MemoryMatrixEvent.nextRound(),
                                    );
                                  },
                                ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 140),
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

class _MatrixCell extends StatelessWidget {
  final bool isHighlighted;
  final bool? isCorrect;
  final bool? isUserSelected;
  final VoidCallback? onTap;

  const _MatrixCell({
    required this.isHighlighted,
    this.isCorrect,
    this.isUserSelected,
    this.onTap,
  });

  Color _getColor(BuildContext context) {
    if (isCorrect != null && isUserSelected != null) {
      if (isCorrect! && isUserSelected!) return context.colors.success;
      if (isCorrect! && !isUserSelected!) return context.colors.warning;
      if (!isCorrect! && isUserSelected!) return context.colors.error;
    }
    return isHighlighted ? context.colors.highlightedCell : context.colors.defaultCell;
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor(context);
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
          boxShadow: isHighlighted
              ? [
                  BoxShadow(
                    color: color.withOpacity(0.4),
                    blurRadius: 8,
                  ),
                ]
              : null,
        ),
      ),
    );
  }
}

class _RoundResultOverlay extends StatelessWidget {
  final bool isCorrect;
  final VoidCallback onNext;

  const _RoundResultOverlay({
    required this.isCorrect,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(
            isCorrect ? Icons.check_circle_rounded : Icons.cancel_rounded,
            size: 64,
            color: isCorrect ? context.colors.success : context.colors.error,
          ).animate().scale(
            begin: const Offset(0, 0),
            curve: Curves.elasticOut,
            duration: 600.ms,
          ),
          const SizedBox(height: 16),
          Text(
            isCorrect ? context.appLocale.correct : context.appLocale.incorrect,
            style: context.textStyles.headlineMedium?.copyWith(
              color: isCorrect ? context.colors.success : context.colors.error,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton.icon(
              onPressed: onNext,
              icon: const Icon(Icons.arrow_forward_rounded),
              label: Text(context.appLocale.nextLevel),
            ),
          ),
        ],
      ),
    ).animate().fadeIn();
  }
}
