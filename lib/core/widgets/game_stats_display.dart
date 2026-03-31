import 'package:flutter/material.dart';

import '../extensions/context_extensions.dart';

class GameStatsDisplay extends StatelessWidget {
  final int? time;
  final int? mistakes;
  final int? score;
  final int? currentNumber;

  const GameStatsDisplay({
    super.key,
    this.time,
    this.mistakes,
    this.score,
    this.currentNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (mistakes != null)
          _StatItem(
            label: context.appLocale.mistakes,
            value: mistakes.toString(),
            color: context.colors.error,
          ),
        if (time != null) ...[
          const SizedBox(height: 16),
          _StatItem(
            label: context.appLocale.time,
            value: time.toString(),
            color: context.colors.textPrimary,
          ),
        ],
        if (score != null) ...[
          const SizedBox(height: 16),
          _StatItem(
            label: context.appLocale.score,
            value: score.toString(),
            color: context.colors.secondary,
          ),
        ],
        if (currentNumber != null) ...[
          const SizedBox(height: 16),
          _StatItem(
            label: '',
            value: currentNumber.toString(),
            color: context.colors.primary,
            large: true,
          ),
        ],
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;
  final Color color;
  final bool large;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
    this.large = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty)
          Text(
            label,
            style: context.textStyles.bodySmall?.copyWith(
              color: context.colors.textSecondary,
            ),
          ),
        Text(
          value,
          style: large
              ? context.textStyles.displayMedium?.copyWith(color: color)
              : context.textStyles.headlineMedium?.copyWith(color: color),
        ),
      ],
    );
  }
}
