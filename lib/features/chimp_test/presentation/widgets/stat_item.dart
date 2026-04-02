import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';

class StatItem extends StatelessWidget {
  final String label;
  final String value;

  const StatItem({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: context.textStyles.bodySmall?.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        Text(
          value,
          style: context.textStyles.headlineMedium?.copyWith(
            color: context.colors.primary,
          ),
        ),
      ],
    );
  }
}