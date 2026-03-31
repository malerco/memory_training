import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../../domain/entities/connection_model.dart';
import '../bloc/repeat_pattern_bloc.dart';
import '../widgets/dot_grid.dart';

class RepeatPatternGamePage extends StatefulWidget {
  final int rows;
  final int cols;

  const RepeatPatternGamePage({
    super.key,
    required this.rows,
    required this.cols,
  });

  @override
  State<RepeatPatternGamePage> createState() => _RepeatPatternGamePageState();
}

class _RepeatPatternGamePageState extends State<RepeatPatternGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RepeatPatternBloc>()
        ..add(RepeatPatternEvent.start(rows: widget.rows, cols: widget.cols)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RepeatPatternBloc, RepeatPatternState>(
      listenWhen: (prev, curr) => 
        prev.phase != GamePhase.completed && curr.phase == GamePhase.completed,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: state.isCorrect,
          time: state.playTime,
          onRestart: () {
            context.read<RepeatPatternBloc>().add(const RepeatPatternEvent.restart());
          },
          gameType: 'repeat_pattern',
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
                      context.read<RepeatPatternBloc>().add(const RepeatPatternEvent.restart());
                    },
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (state.phase == GamePhase.playing)
                          ElevatedButton.icon(
                            onPressed: () {
                              context.read<RepeatPatternBloc>().add(const RepeatPatternEvent.submit());
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
                        // Stats
                        SizedBox(
                          width: 120,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (state.phase == GamePhase.memorizing) ...[
                                Text(
                                  context.appLocale.memorize,
                                  style: context.textStyles.bodySmall?.copyWith(
                                    color: context.colors.textSecondary,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '${state.memorizeTimeLeft}',
                                  style: context.textStyles.displayMedium?.copyWith(
                                    color: context.colors.warning,
                                  ),
                                ).animate(
                                  onPlay: (controller) => controller.repeat(),
                                ).scale(
                                  begin: const Offset(1, 1),
                                  end: const Offset(1.1, 1.1),
                                  duration: 500.ms,
                                ).then().scale(
                                  begin: const Offset(1.1, 1.1),
                                  end: const Offset(1, 1),
                                  duration: 500.ms,
                                ),
                              ] else ...[
                                Text(
                                  context.appLocale.time,
                                  style: context.textStyles.bodySmall?.copyWith(
                                    color: context.colors.textSecondary,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  '${state.playTime}',
                                  style: context.textStyles.displaySmall?.copyWith(
                                    color: context.colors.primary,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                        // GameGrid
                        Expanded(
                          child: DotGrid(
                            rows: state.rows,
                            cols: state.cols,
                            connections: state.phase == GamePhase.memorizing
                                ? state.targetPattern
                                : state.userPattern,
                            isInteractive: state.phase == GamePhase.playing,
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
