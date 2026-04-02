import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../bloc/sequence_memory_bloc.dart';

class SequenceMemoryGamePage extends StatefulWidget {
  final int gridSize;

  const SequenceMemoryGamePage({super.key, required this.gridSize});

  @override
  State<SequenceMemoryGamePage> createState() => _SequenceMemoryGamePageState();
}

class _SequenceMemoryGamePageState extends State<SequenceMemoryGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) => getIt<SequenceMemoryBloc>()..add(SequenceMemoryEvent.start(widget.gridSize)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SequenceMemoryBloc, SequenceMemoryState>(
      listenWhen: (prev, curr) =>
          prev.phase != SequencePhase.failed && curr.phase == SequencePhase.failed,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: state.level > 5,
          time: state.score,
          onRestart: () {
            context.read<SequenceMemoryBloc>().add(const SequenceMemoryEvent.restart());
          },
          gameType: 'sequence_memory',
          gridSize: state.gridSize,
          higherIsBetter: true,
          alwaysSaveRecord: true,
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
                      context.read<SequenceMemoryBloc>().add(const SequenceMemoryEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 140,
                          child: _StatsPanel(state: state),
                        ),
                        Expanded(
                          child: Center(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: _SequenceGrid(state: state),
                            ),
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

class _StatsPanel extends StatelessWidget {
  final SequenceMemoryState state;

  const _StatsPanel({required this.state});

  @override
  Widget build(BuildContext context) {
    String phaseText;
    Color phaseColor;
    
    switch (state.phase) {
      case SequencePhase.ready:
        phaseText = context.appLocale.getReady;
        phaseColor = context.colors.textSecondary;
        break;
      case SequencePhase.showing:
        phaseText = context.appLocale.memorize;
        phaseColor = context.colors.warning;
        break;
      case SequencePhase.playing:
        phaseText = context.appLocale.yourTurn;
        phaseColor = context.colors.success;
        break;
      case SequencePhase.success:
        phaseText = context.appLocale.correct;
        phaseColor = context.colors.success;
        break;
      case SequencePhase.failed:
        phaseText = context.appLocale.wrong;
        phaseColor = context.colors.error;
        break;
      case SequencePhase.completed:
        phaseText = context.appLocale.completed;
        phaseColor = context.colors.success;
        break;
    }
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          phaseText,
          style: context.textStyles.titleMedium?.copyWith(
            color: phaseColor,
          ),
        ).animate(
          key: ValueKey(state.phase),
        ).fadeIn().scale(begin: const Offset(0.8, 0.8)),
        const SizedBox(height: 32),
        _StatItem(
          label: context.appLocale.level,
          value: '${state.level}',
        ),
        const SizedBox(height: 12),
        _StatItem(
          label: context.appLocale.sequenceLength,
          value: '${state.sequence.length}',
        ),
        const SizedBox(height: 12),
        _StatItem(
          label: context.appLocale.score,
          value: '${state.score}',
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textStyles.bodySmall?.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        Text(
          value,
          style: context.textStyles.headlineSmall?.copyWith(
            color: context.colors.secondary,
          ),
        ),
      ],
    );
  }
}

class _SequenceGrid extends StatefulWidget {
  final SequenceMemoryState state;

  const _SequenceGrid({required this.state});

  @override
  State<_SequenceGrid> createState() => _SequenceGridState();
}

class _SequenceGridState extends State<_SequenceGrid> {
  int? _pressedIndex;

  @override
  Widget build(BuildContext context) {
    final isShowing = widget.state.phase == SequencePhase.showing;
    final canTap = widget.state.phase == SequencePhase.playing;
    
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.3),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.state.gridSize,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: widget.state.gridSize * widget.state.gridSize,
        itemBuilder: (context, index) {
          final isHighlighted = isShowing && 
              widget.state.showingIndex != null && 
              widget.state.sequence[widget.state.showingIndex!] == index;
          
          final isLastTapped = widget.state.lastTappedPosition == index;
          final isPressed = _pressedIndex == index;
          
          Color cellColor = context.colors.surfaceLight;
          if (isHighlighted) {
            cellColor = context.colors.primary;
          } else if (isLastTapped) {
            cellColor = widget.state.lastTapCorrect ? context.colors.success : context.colors.error;
          } else if (isPressed && canTap) {
            cellColor = context.colors.secondary;
          }
          
          return GestureDetector(
            onTapDown: canTap
                ? (_) {
                    setState(() => _pressedIndex = index);
                  }
                : null,
            onTapUp: canTap
                ? (_) {
                    context.read<SequenceMemoryBloc>().add(
                      SequenceMemoryEvent.userTap(index),
                    );
                    Future.delayed(const Duration(milliseconds: 150), () {
                      if (mounted) setState(() => _pressedIndex = null);
                    });
                  }
                : null,
            onTapCancel: () {
              setState(() => _pressedIndex = null);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              decoration: BoxDecoration(
                color: cellColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: (isHighlighted || isPressed)
                    ? [
                        BoxShadow(
                          color: (isHighlighted ? context.colors.primary : context.colors.secondary).withOpacity(0.5),
                          blurRadius: 16,
                          spreadRadius: 2,
                        ),
                      ]
                    : null,
              ),
            ),
          );
        },
      ),
    );
  }
}
