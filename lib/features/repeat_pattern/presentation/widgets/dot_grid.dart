import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_training/features/repeat_pattern/domain/entities/connection_render_model.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../domain/entities/connection_model.dart';
import '../bloc/repeat_pattern_bloc.dart';
import 'connection_widget.dart';

class DotGrid extends StatelessWidget {
  final int rows;
  final int cols;
  final List<Connection> connections;
  final bool isInteractive;

  const DotGrid({
    required this.rows,
    required this.cols,
    required this.connections,
    required this.isInteractive,
  });

  bool _hasConnection(int row, int col, ConnectionDirection direction) {
    return connections.any((c) =>
    c.row == row && c.col == col && c.direction == direction);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.3),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(24),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final cellWidth = constraints.maxWidth / cols;
          final cellHeight = constraints.maxHeight / rows;
          final dotSize = (cellWidth < cellHeight ? cellWidth : cellHeight) * 0.3;
          final connectionThickness = dotSize * 0.9;

          final allConnections = <ConnectionRenderModel>[];

          for (int row = 0; row < rows; row++) {
            for (int col = 0; col < cols; col++) {
              // Horizontal connection
              if (col < cols - 1) {
                allConnections.add(ConnectionRenderModel(
                  key: 'h_${row}_$col',
                  row: row,
                  col: col,
                  direction: ConnectionDirection.horizontal,
                  left: col * cellWidth + cellWidth / 2,
                  top: row * cellHeight + cellHeight / 2 - connectionThickness / 2,
                  width: cellWidth,
                  height: connectionThickness,
                  isActive: _hasConnection(row, col, ConnectionDirection.horizontal),
                ));
              }
              // Vertical connection
              if (row < rows - 1) {
                allConnections.add(ConnectionRenderModel(
                  key: 'v_${row}_$col',
                  row: row,
                  col: col,
                  direction: ConnectionDirection.vertical,
                  left: col * cellWidth + cellWidth / 2 - connectionThickness / 2,
                  top: row * cellHeight + cellHeight / 2,
                  width: connectionThickness,
                  height: cellHeight,
                  isActive: _hasConnection(row, col, ConnectionDirection.vertical),
                ));
              }
            }
          }

          // inactive first, then active
          allConnections.sort((a, b) {
            if (a.isActive == b.isActive) return 0;
            return a.isActive ? 1 : -1;
          });

          return Stack(
            children: [
              for (final conn in allConnections)
                Positioned(
                  key: ValueKey(conn.key),
                  left: conn.left,
                  top: conn.top,
                  child: ConnectionWidget(
                    width: conn.width,
                    height: conn.height,
                    isActive: conn.isActive,
                    isInteractive: isInteractive,
                    onTap: isInteractive
                        ? () {
                      context.read<RepeatPatternBloc>().add(
                        RepeatPatternEvent.toggleConnection(
                          Connection(
                            row: conn.row,
                            col: conn.col,
                            direction: conn.direction,
                          ),
                        ),
                      );
                    }
                        : null,
                  ),
                ),
              // Dots
              for (int row = 0; row < rows; row++)
                for (int col = 0; col < cols; col++)
                  Positioned(
                    key: ValueKey('dot_${row}_$col'),
                    left: col * cellWidth + cellWidth / 2 - dotSize / 2,
                    top: row * cellHeight + cellHeight / 2 - dotSize / 2,
                    child: Container(
                      width: dotSize,
                      height: dotSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.dotColor,
                        boxShadow: [
                          BoxShadow(
                            color: context.colors.dotColor.withOpacity(0.4),
                            blurRadius: 8,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
            ],
          );
        },
      ),
    );
  }
}