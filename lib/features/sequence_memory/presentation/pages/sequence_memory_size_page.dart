import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_training/core/router/app_router.dart';

import '../../../../core/extensions/context_extensions.dart';

import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_rules_dialog.dart';

class SequenceMemorySizePage extends StatefulWidget {
  const SequenceMemorySizePage({super.key});

  @override
  State<SequenceMemorySizePage> createState() => _SequenceMemorySizePageState();
}

class _SequenceMemorySizePageState extends State<SequenceMemorySizePage> with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    final sizes = [3, 4, 5];
    
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
                    onPressed: () => context.go(AppRouter.home),
                    icon: const Icon(Icons.arrow_back_rounded),
                    style: IconButton.styleFrom(
                      backgroundColor: context.colors.surface,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      context.appLocale.sequenceMemory,
                      style: context.textStyles.headlineMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ).animate().fadeIn().slideX(begin: -0.2),
              const SizedBox(height: 32),
              Text(
                context.appLocale.selectSize,
                style: context.textStyles.titleMedium?.copyWith(
                  color: context.colors.textSecondary,
                ),
              ).animate().fadeIn(delay: const Duration(milliseconds: 100)),
              const SizedBox(height: 24),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: sizes.length,
                  itemBuilder: (context, index) {
                    final size = sizes[index];
                    return _SizeCard(
                      size: size,
                      onTap: () {
                        GameRulesDialog.show(
                          context,
                          title: context.appLocale.sequenceMemory,
                          rules: context.appLocale.sequenceMemoryRules,
                          onStart: () {
                            context.go(AppRouter.sequenceMemoryGame, extra: {'size':size});
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

class _SizeCard extends StatelessWidget {
  final int size;
  final VoidCallback onTap;

  const _SizeCard({
    required this.size,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          gradient: context.colors.cardGradient,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: context.colors.primary.withOpacity(0.3),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$size×$size',
              style: context.textStyles.headlineMedium?.copyWith(
                color: context.colors.primary,
              ),
            ),
            const SizedBox(height: 8),
            _buildGridPreview(size),
          ],
        ),
      ),
    );
  }

  Widget _buildGridPreview(int size) {
    return SizedBox(
      width: 40,
      height: 40,
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: size,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
        ),
        itemCount: size * size,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: context.colors.surfaceLight,
              borderRadius: BorderRadius.circular(2),
            ),
          );
        },
      ),
    );
  }
}
