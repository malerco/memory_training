import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_training/core/router/app_router.dart';

import '../extensions/context_extensions.dart';
import 'gradient_card.dart';

class SizeOption {
  final int rows;
  final int cols;
  final String label;

  const SizeOption({
    required this.rows,
    required this.cols,
    required this.label,
  });
}

class SizeSelector extends StatelessWidget {
  final String title;
  final List<SizeOption> options;
  final void Function(SizeOption) onSelected;

  const SizeSelector({
    super.key,
    required this.title,
    required this.options,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => context.go(AppRouter.home),
                icon: const Icon(Icons.arrow_back_rounded),
                style: IconButton.styleFrom(
                  backgroundColor: context.colors.surface,
                ),
              ),
              const Spacer(),
              Center(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: context.textStyles.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      context.appLocale.selectSize,
                      style: context.textStyles.bodyMedium?.copyWith(
                        color: context.colors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 40),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      alignment: WrapAlignment.center,
                      children: options.asMap().entries.map((entry) {
                        final index = entry.key;
                        final option = entry.value;
                        return _SizeCard(
                          option: option,
                          onTap: () => onSelected(option),
                        )
                            .animate()
                            .fadeIn(
                              delay: Duration(milliseconds: 100 * index),
                              duration: const Duration(milliseconds: 400),
                            )
                            .slideY(
                              begin: 0.3,
                              delay: Duration(milliseconds: 100 * index),
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeOut,
                            );
                      }).toList(),
                    ),
                  ],
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class _SizeCard extends StatelessWidget {
  final SizeOption option;
  final VoidCallback onTap;

  const _SizeCard({
    required this.option,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      child: GradientCard(
        onTap: onTap,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    option.label,
                    style: context.textStyles.bodyLarge?.copyWith(
                      color: context.colors.primary,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Text(
              '${option.rows} × ${option.cols}',
              style: context.textStyles.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
