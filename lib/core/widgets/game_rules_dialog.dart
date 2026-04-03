import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../extensions/context_extensions.dart';

class GameRulesDialog extends StatelessWidget {
  final String title;
  final String rules;
  final VoidCallback onStart;

  const GameRulesDialog({
    super.key,
    required this.title,
    required this.rules,
    required this.onStart,
  });

  static Future<void> show(
    BuildContext context, {
    required String title,
    required String rules,
    required VoidCallback onStart,
  }) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => GameRulesDialog(
        title: title,
        rules: rules,
        onStart: onStart,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        constraints: const BoxConstraints(maxWidth: 400),
        decoration: BoxDecoration(
          color: context.colors.surface,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: context.colors.primary.withOpacity(0.3),
            width: 2,
          ),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: context.colors.primary.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: context.colors.primary,
                    size: 24,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    '${context.appLocale.rules}: $title',
                    style: context.textStyles.titleLarge?.copyWith(
                      color: context.colors.textPrimary,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: context.colors.surfaceLight.withOpacity(0.3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                rules,
                style: context.textStyles.bodyMedium?.copyWith(
                  color: context.colors.textPrimary,
                  height: 1.6,
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pop();
                  onStart();
                },
                icon: const Icon(Icons.play_arrow_rounded),
                label: Text(context.appLocale.start),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ).animate().fadeIn().scale(
        begin: const Offset(0.9, 0.9),
        curve: Curves.easeOut,
      ),
    );
  }
}
