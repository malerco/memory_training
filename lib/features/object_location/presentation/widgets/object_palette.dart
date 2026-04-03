

import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';

class ObjectPalette extends StatelessWidget {
  final Map<int, int> objectPositions;
  final Map<int, int> userAnswers;
  final List<IconData> icons;

  const ObjectPalette({
    required this.objectPositions,
    required this.userAnswers,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    final allObjects = objectPositions.values.toSet().toList();
    final placedObjects = userAnswers.values.toSet();

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: allObjects.map((objectType) {
            final isPlaced = placedObjects.contains(objectType);
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: isPlaced
                    ? context.colors.surfaceLight
                    : context.colors.primary.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: isPlaced ? Colors.transparent : context.colors.primary,
                  width: 2,
                ),
              ),
              child: Center(
                child: Icon(
                  icons[objectType % icons.length],
                  color: isPlaced
                      ? context.colors.textSecondary
                      : context.colors.primary,
                  size: 24,
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}