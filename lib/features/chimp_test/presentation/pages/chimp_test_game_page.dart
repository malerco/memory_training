import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../bloc/chimp_test_bloc.dart';
import '../widgets/chimp_grid.dart';
import '../widgets/stat_item.dart';

class ChimpTestGamePage extends StatefulWidget {
  final int gridSize;

  const ChimpTestGamePage({super.key, required this.gridSize});

  @override
  State<ChimpTestGamePage> createState() => _ChimpTestGamePageState();
}

class _ChimpTestGamePageState extends State<ChimpTestGamePage> with LandscapeModeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ChimpTestBloc>()..add(ChimpTestEvent.start(gridSize: widget.gridSize)),
      child: const _GameView(),
    );
  }
}

class _GameView extends StatelessWidget {
  const _GameView();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChimpTestBloc, ChimpTestState>(
      listenWhen: (prev, curr) => 
        prev.phase != ChimpTestPhase.gameOver && curr.phase == ChimpTestPhase.gameOver,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: state.highestLevel >= 7,
          time: state.score,
          onRestart: () {
            context.read<ChimpTestBloc>().add(const ChimpTestEvent.restart());
          },
          gameType: 'chimp_test',
          gridSize: state.gridSize,
          higherIsBetter: true,
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  GameAppBar(
                    onRestart: () {
                      context.read<ChimpTestBloc>().add(const ChimpTestEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              StatItem(
                                label: context.appLocale.level,
                                value: '${state.numbersCount}',
                              ),
                              const SizedBox(height: 32),
                              StatItem(
                                label: context.appLocale.score,
                                value: '${state.score}',
                              ),
                              const SizedBox(height: 16),
                              if (state.phase == ChimpTestPhase.showing)
                                Text(
                                  context.appLocale.memorize,
                                  style: context.textStyles.titleMedium?.copyWith(
                                    color: context.colors.warning,
                                  ),
                                ).animate(onPlay: (c) => c.repeat()).fadeIn().then().fadeOut(),
                              if (state.phase == ChimpTestPhase.playing)
                                Text(
                                  '${context.appLocale.tapNumber} ${state.nextExpectedNumber}',
                                  style: context.textStyles.titleMedium?.copyWith(
                                    color: context.colors.primary,
                                  ),
                                ),

                              if (state.phase == ChimpTestPhase.roundComplete) ...[
                                const SizedBox(height: 16),
                                ElevatedButton.icon(
                                  onPressed: () {
                                    context.read<ChimpTestBloc>().add(const ChimpTestEvent.nextRound());
                                  },
                                  icon: const Icon(Icons.arrow_forward_rounded),
                                  label: Text(context.appLocale.nextLevel),
                                ).animate().fadeIn().scale(),
                              ],
                            ],
                          ),
                        ),

                        Expanded(
                          child: Center(
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: ChimpGrid(
                                gridSize: state.gridSize,
                                numberPositions: state.numberPositions,
                                showNumbers: state.showNumbers,
                                isInteractive: state.phase == ChimpTestPhase.playing,
                              ),
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




