import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_result_dialog.dart';
import '../bloc/picture_memory_bloc.dart';
import '../widgets/answer_button.dart';
import '../widgets/lives_display.dart';
import '../widgets/stat_item.dart';

class PictureMemoryGamePage extends StatefulWidget {
  const PictureMemoryGamePage({super.key});

  @override
  State<PictureMemoryGamePage> createState() => _PictureMemoryGamePageState();
}

class _PictureMemoryGamePageState extends State<PictureMemoryGamePage> with LandscapeModeMixin {

  static const List<IconData> _icons = [
    Icons.pets, Icons.favorite, Icons.star, Icons.bolt, Icons.cloud,
    Icons.music_note, Icons.palette, Icons.cake, Icons.beach_access, Icons.directions_car,
    Icons.flight, Icons.local_florist, Icons.sports_soccer, Icons.anchor, Icons.bug_report,
    Icons.casino, Icons.diamond, Icons.eco, Icons.fingerprint, Icons.gavel,
    Icons.headphones, Icons.icecream, Icons.key, Icons.local_pizza, Icons.mood,
    Icons.nightlight, Icons.opacity, Icons.park, Icons.qr_code, Icons.rocket_launch,
    Icons.savings, Icons.theaters, Icons.umbrella, Icons.volcano, Icons.water_drop,
    Icons.yard, Icons.air, Icons.backup, Icons.camera, Icons.dangerous,
    Icons.earbuds, Icons.face, Icons.games, Icons.hive, Icons.interests,
    Icons.join_full, Icons.keyboard, Icons.lens, Icons.map, Icons.nature,
    Icons.g_mobiledata, Icons.h_mobiledata_outlined, Icons.kayaking, Icons.balance,
    Icons.read_more, Icons.wallet, Icons.high_quality, Icons.breakfast_dining,
    Icons.featured_play_list_outlined, Icons.width_full_outlined, Icons.drafts_outlined, Icons.accessibility,
    Icons.radar_sharp, Icons.kebab_dining_outlined, Icons.lan, Icons.monitor_weight_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<PictureMemoryBloc>()..add(const PictureMemoryEvent.start(pictureCount: 5)),
      child: _GameView(icons: _icons),
    );
  }
}

class _GameView extends StatelessWidget {
  final List<IconData> icons;
  
  const _GameView({required this.icons});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PictureMemoryBloc, PictureMemoryState>(
      listenWhen: (prev, curr) =>
          prev.phase != PictureMemoryPhase.gameOver && curr.phase == PictureMemoryPhase.gameOver,
      listener: (context, state) {
        GameResultDialog.show(
          context,
          isSuccess: state.score >= 20,
          time: state.score,
          onRestart: () {
            context.read<PictureMemoryBloc>().add(const PictureMemoryEvent.restart());
          },
          gameType: 'picture_memory',
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
                      context.read<PictureMemoryBloc>().add(const PictureMemoryEvent.restart());
                    },
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            StatItem(
                              label: context.appLocale.score,
                              value: '${state.score}',
                            ),
                            const SizedBox(height: 32),
                            LivesDisplay(lives: state.lives),
                          ],
                        ),

                        Expanded(
                          child: Column(
                            children: [
                              Center(
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    gradient: context.colors.cardGradient,
                                    borderRadius: BorderRadius.circular(24),
                                    border: Border.all(
                                      color: context.colors.primary.withOpacity(0.3),
                                      width: 2,
                                    ),
                                  ),
                                  child: Center(
                                    child: Icon(
                                      icons[state.currentPicture % icons.length],
                                      size: 80,
                                      color: context.colors.primary,
                                    ),
                                  ),
                                ).animate(key: ValueKey(state.round)).fadeIn().scale(
                                  begin: const Offset(0.8, 0.8),
                                  duration: 200.ms,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                context.appLocale.haveYouSeenThis,
                                style: context.textStyles.titleMedium,
                              ),
                              const SizedBox(height: 24,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AnswerButton(
                                    label: context.appLocale.newPicture,
                                    color: context.colors.success,
                                    onTap: () {
                                      context.read<PictureMemoryBloc>().add(
                                        const PictureMemoryEvent.answer(sawBefore: false),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 24),
                                  AnswerButton(
                                    label: context.appLocale.seenBefore,
                                    color: context.colors.warning,
                                    onTap: () {
                                      context.read<PictureMemoryBloc>().add(
                                        const PictureMemoryEvent.answer(sawBefore: true),
                                      );
                                    },
                                  ),
                                ],
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}