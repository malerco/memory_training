import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../bloc/chimp_test_bloc.dart';

class ChimpGrid extends StatelessWidget {
  final int gridSize;
  final Map<int, int> numberPositions;
  final bool showNumbers;
  final bool isInteractive;

  const ChimpGrid({
    required this.gridSize,
    required this.numberPositions,
    required this.showNumbers,
    required this.isInteractive,
  });

  @override
  Widget build(BuildContext context) {
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
          final number = numberPositions[index];
          final hasNumber = number != null;

          return GestureDetector(
            onTap: isInteractive && hasNumber
                ? () {
              context.read<ChimpTestBloc>().add(ChimpTestEvent.tapCell(index));
            }
                : null,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              decoration: BoxDecoration(
                color: hasNumber
                    ? context.colors.primary
                    : context.colors.surfaceLight,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: hasNumber && showNumbers
                    ? Text(
                  '$number',
                  style: context.textStyles.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
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