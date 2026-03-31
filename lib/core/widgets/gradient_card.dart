import 'package:flutter/material.dart';
import '../extensions/context_extensions.dart';

class GradientCard extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final List<Color>? gradientColors;
  final double borderRadius;
  final EdgeInsets padding;

  const GradientCard({
    super.key,
    required this.child,
    this.onTap,
    this.gradientColors,
    this.borderRadius = 20,
    this.padding = const EdgeInsets.all(20),
  });

  @override
  Widget build(BuildContext context) {
    final gradient = gradientColors != null 
        ? LinearGradient(begin: Alignment.topLeft, end: Alignment.bottomRight, colors: gradientColors!)
        : context.colors.cardGradient;
    final colors = gradientColors ?? [context.colors.surfaceLight, context.colors.surfaceVariant];

    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Container(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.circular(borderRadius),
            border: Border.all(
              color: context.colors.primary.withOpacity(0.2),
              width: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: colors.first.withOpacity(0.3),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
