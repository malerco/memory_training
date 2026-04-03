import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../bloc/object_location_bloc.dart';

class ObjectGrid extends StatelessWidget {
  final int gridSize;
  final Map<int, int> objectPositions;
  final Map<int, int> userAnswers;
  final ObjectLocationPhase phase;
  final List<IconData> icons;

  const ObjectGrid({
    required this.gridSize,
    required this.objectPositions,
    required this.userAnswers,
    required this.phase,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    final showOriginal = phase == ObjectLocationPhase.memorizing;
    final isInteractive = phase == ObjectLocationPhase.playing;

    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.3),
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: gridSize,
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
        ),
        itemCount: gridSize * gridSize,
        itemBuilder: (context, index) {
          final originalObject = objectPositions[index];
          final userObject = userAnswers[index];

          final displayObject = showOriginal ? originalObject : userObject;

          return GestureDetector(
            onTap: isInteractive
                ? () {
              context.read<ObjectLocationBloc>().add(ObjectLocationEvent.tapCell(index));
            }
                : null,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: displayObject != null
                    ? context.colors.primary.withOpacity(0.2)
                    : context.colors.surfaceLight,
                borderRadius: BorderRadius.circular(8),
                border: displayObject != null
                    ? Border.all(color: context.colors.primary, width: 2)
                    : null,
              ),
              child: Center(
                child: displayObject != null
                    ? Icon(
                  icons[displayObject % icons.length],
                  color: context.colors.primary,
                  size: 28,
                )
                    : null,
              ),
            ),
          );
        },
      ),
    );
  }
}