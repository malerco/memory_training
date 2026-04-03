import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../bloc/object_location_bloc.dart';
import '../widgets/object_grid.dart';
import '../widgets/object_palette.dart';
import '../widgets/stat_item.dart';

class ObjectLocationGamePage extends StatefulWidget {
  final int gridSize;

  const ObjectLocationGamePage({super.key, required this.gridSize});

  @override
  State<ObjectLocationGamePage> createState() => _ObjectLocationGamePageState();
}

class _ObjectLocationGamePageState extends State<ObjectLocationGamePage> with LandscapeModeMixin {
  static const List<IconData> _icons = [
    Icons.star, Icons.favorite, Icons.bolt, Icons.cloud, Icons.music_note,
    Icons.pets, Icons.cake, Icons.beach_access, Icons.directions_car, Icons.flight,
    Icons.local_florist, Icons.anchor, Icons.diamond, Icons.eco, Icons.rocket_launch,
    Icons.icecream, Icons.key, Icons.local_pizza, Icons.umbrella, Icons.water_drop,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ObjectLocationBloc>()..add(ObjectLocationEvent.start(gridSize: widget.gridSize)),
      child: _GameView(icons: _icons),
    );
  }
}

class _GameView extends StatelessWidget {
  final List<IconData> icons;

  const _GameView({required this.icons});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ObjectLocationBloc, ObjectLocationState>(
      listenWhen: (prev, curr) =>
          prev.phase != ObjectLocationPhase.gameOver && curr.phase == ObjectLocationPhase.gameOver,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: state.score >= 10,
          time: state.score,
          onRestart: () {
            context.read<ObjectLocationBloc>().add(const ObjectLocationEvent.restart());
          },
          gameType: 'object_location',
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
                      context.read<ObjectLocationBloc>().add(const ObjectLocationEvent.restart());
                    },
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (state.phase == ObjectLocationPhase.memorizing)
                          Text(
                            '${context.appLocale.memorize} ${state.memorizeTimeLeft}',
                            style: context.textStyles.titleMedium?.copyWith(
                              color: context.colors.warning,
                            ),
                            textAlign: TextAlign.center,
                          ).animate(onPlay: (c) => c.repeat()).fadeIn().then().fadeOut(),
                        if (state.phase == ObjectLocationPhase.playing)
                          Text(
                            context.appLocale.placeObjects,
                            style: context.textStyles.titleMedium?.copyWith(
                              color: context.colors.primary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        const SizedBox(height: 16),
                      ],
                    ),
                    trailing: state.phase == ObjectLocationPhase.playing
                        ? ElevatedButton.icon(
                            onPressed: state.userAnswers.length == state.objectCount
                                ? () {
                                    context.read<ObjectLocationBloc>().add(
                                      const ObjectLocationEvent.submit(),
                                    );
                                  }
                                : null,
                            icon: const Icon(Icons.check_rounded),
                            label: Text(context.appLocale.confirm),
                          )
                        : null,
                  ),
                  const SizedBox(height: 16),
                  Expanded(child: Row(
                    children: [
                      Expanded(
                        flex:1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StatItem(
                              label: context.appLocale.round,
                              value: '${state.round}',
                            ),
                            const SizedBox(height: 32),
                            StatItem(
                              label: context.appLocale.score,
                              value: '${state.score}',
                            ),

                            if (state.phase == ObjectLocationPhase.playing) ...[
                              const SizedBox(height: 16),
                              ObjectPalette(
                                objectPositions: state.objectPositions,
                                userAnswers: state.userAnswers,
                                icons: icons,
                              ),
                            ],
                            if (state.phase == ObjectLocationPhase.roundComplete) ...[
                              const SizedBox(height: 16),
                              ElevatedButton.icon(
                                onPressed: () {
                                  context.read<ObjectLocationBloc>().add(const ObjectLocationEvent.nextRound());
                                },
                                icon: const Icon(Icons.arrow_forward_rounded),
                                label: Text(context.appLocale.nextLevel),
                              ).animate().fadeIn().scale(),
                            ],
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Expanded(
                              child: Center(
                                child: AspectRatio(
                                  aspectRatio: 1,
                                  child: ObjectGrid(
                                    gridSize: state.gridSize,
                                    objectPositions: state.objectPositions,
                                    userAnswers: state.userAnswers,
                                    phase: state.phase,
                                    icons: icons,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}