import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_training/features/home/domain/entities/training_model.dart';
import 'package:memory_training/features/home/presentation/widgets/training_card.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/di/injection.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/orientation_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    return const _HomeView();
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  List<TrainingModel> getItems(BuildContext context){
    final trainers = [
      TrainingModel(
        title: context.appLocale.repeatPatternTitle,
        description: context.appLocale.repeatPatternDescription,
        icon: Icons.grid_on_rounded,
        route: AppRouter.repeatPatternSize,
        gradient: [const Color(0xFF6C63FF), const Color(0xFF9D97FF)],
      ),
      TrainingModel(
        title: context.appLocale.schulteTitle,
        description: context.appLocale.schulteDescription,
        icon: Icons.grid_3x3_rounded,
        route: AppRouter.schulteSize,
        gradient: [const Color(0xFF00D9A5), const Color(0xFF5FFFCE)],
      ),
      TrainingModel(
        title: context.appLocale.gorbovTitle,
        description: context.appLocale.gorbovDescription,
        icon: Icons.palette_rounded,
        route: AppRouter.gorbovSize,
        gradient: [const Color(0xFFFF6B6B), const Color(0xFFFFB347)],
      ),
      TrainingModel(
        title: context.appLocale.memoryMatrixTitle,
        description: context.appLocale.memoryMatrixDescription,
        icon: Icons.apps_rounded,
        route: AppRouter.memoryMatrix,
        gradient: [const Color(0xFF4ECDC4), const Color(0xFF44A08D)],
      ),
      TrainingModel(
        title: context.appLocale.findPairTitle,
        description: context.appLocale.findPairDescription,
        icon: Icons.flip_rounded,
        route: AppRouter.findPairSize,
        gradient: [const Color(0xFFB24592), const Color(0xFFF15F79)],
      ),
      TrainingModel(
        title: context.appLocale.nBackTitle,
        description: context.appLocale.nBackDescription,
        icon: Icons.history_rounded,
        route: AppRouter.nBack,
        gradient: [const Color(0xFF667eea), const Color(0xFF764ba2)],
      ),
      TrainingModel(
        title: context.appLocale.sequenceMemory,
        description: context.appLocale.sequenceMemoryDescription,
        icon: Icons.linear_scale_rounded,
        route: AppRouter.sequenceMemory,
        gradient: [const Color(0xFFf093fb), const Color(0xFFf5576c)],
      ),
    ];
    return trainers;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      AppConstants.appName,
                      style: context.textStyles.headlineSmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  IconButton(
                    onPressed: () => context.go(AppRouter.leaderboard),
                    icon: const Icon(Icons.emoji_events_rounded),
                    style: IconButton.styleFrom(
                      backgroundColor: context.colors.surface,
                    ),
                  ),
                ],
              ).animate().fadeIn().slideY(begin: -0.2),
              const SizedBox(height: 32),
              Expanded(
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final isPortrait = constraints.maxHeight > constraints.maxWidth;
                    final crossAxisCount = isPortrait ? 2 : (constraints.maxWidth > 900 ? 3 : 2);

                    // final cardHeight = isPortrait ? 140.0 : 120.0;
                    final cardWidth = (constraints.maxWidth - (crossAxisCount - 1) * 16) / crossAxisCount;
                    // final childAspectRatio = cardWidth / cardHeight;

                    final trainers = getItems(context);

                    return GridView.builder(
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: crossAxisCount,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,

                      ),
                      itemCount: trainers.length,
                      itemBuilder: (context, index) {
                        return TrainingCard(
                          data: trainers[index],
                        ).animate()
                            .fadeIn(delay: Duration(milliseconds: 100 * index))
                            .scale(
                          begin: const Offset(0.9, 0.9),
                          delay: Duration(milliseconds: 100 * index),
                          curve: Curves.easeOut,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
