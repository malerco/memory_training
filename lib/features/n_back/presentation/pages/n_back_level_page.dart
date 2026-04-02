import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_rules_dialog.dart';

class NBackLevelPage extends StatefulWidget {
  const NBackLevelPage({super.key});

  @override
  State<NBackLevelPage> createState() => _NBackLevelPageState();
}

class _NBackLevelPageState extends State<NBackLevelPage> with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () => context.go('/home'),
                    icon: const Icon(Icons.arrow_back_rounded),
                    style: IconButton.styleFrom(
                      backgroundColor: context.colors.surface,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'N-Back',
                    style: context.textStyles.headlineMedium,
                  ),
                ],
              ).animate().fadeIn().slideX(begin: -0.2),
              const SizedBox(height: 32),
              Text(
                context.appLocale.selectLevel,
                style: context.textStyles.titleMedium?.copyWith(
                  color: context.colors.textSecondary,
                ),
              ).animate().fadeIn(delay: const Duration(milliseconds: 100)),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 1.5,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    final level = index + 2; // 2-back to 5-back
                    return _LevelCard(
                      level: level,
                      onTap: () {
                        GameRulesDialog.show(
                          context,
                          title: context.appLocale.nBackTitle,
                          rules: context.appLocale.nBackRules,
                          onStart: () {
                            context.go('/n_back/game/$level');
                          },
                        );
                      },
                    ).animate()
                        .fadeIn(delay: Duration(milliseconds: 100 * index))
                        .slideY(begin: 0.2);
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

class _LevelCard extends StatelessWidget {
  final int level;
  final VoidCallback onTap;

  const _LevelCard({
    required this.level,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final difficulty = _getDifficulty(level);
    final color = _getDifficultyColor(context, level);
    
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: context.colors.cardGradient,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: color.withOpacity(0.5),
            width: 2,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$level-Back',
              style: context.textStyles.headlineMedium?.copyWith(
                color: color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              difficulty,
              style: context.textStyles.bodySmall?.copyWith(
                color: context.colors.textSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getDifficulty(int level) {
    switch (level) {
      case 2:
        return 'Easy';
      case 3:
        return 'Medium';
      case 4:
        return 'Hard';
      case 5:
        return 'Expert';
      default:
        return '';
    }
  }

  Color _getDifficultyColor(BuildContext context, int level) {
    switch (level) {
      case 2:
        return context.colors.success;
      case 3:
        return context.colors.secondary;
      case 4:
        return context.colors.warning;
      case 5:
        return context.colors.error;
      default:
        return context.colors.primary;
    }
  }
}
