import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../bloc/n_back_bloc.dart';

class StatsPanel extends StatelessWidget {
  final NBackState state;

  const StatsPanel({required this.state});

  @override
  Widget build(BuildContext context) {
    final accuracy = state.totalTrials > 0
        ? (state.score / state.totalTrials * 100).round()
        : 0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${state.nLevel}-Back',
          style: context.textStyles.headlineMedium?.copyWith(
            color: context.colors.primary,
          ),
        ),
        const SizedBox(height: 24),
        _StatItem(
          label: context.appLocale.score,
          value: '${state.score}/${state.totalTrials}',
        ),
        const SizedBox(height: 12),
        _StatItem(
          label: context.appLocale.accuracy,
          value: '$accuracy%',
        ),
        const SizedBox(height: 12),
        _StatItem(
          label: context.appLocale.remaining,
          value: '${state.maxTrials - state.totalTrials}',
        ),
      ],
    );
  }
}

class _StatItem extends StatelessWidget {
  final String label;
  final String value;

  const _StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: context.textStyles.bodySmall?.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        Text(
          value,
          style: context.textStyles.titleLarge?.copyWith(
            color: context.colors.secondary,
          ),
        ),
      ],
    );
  }
}