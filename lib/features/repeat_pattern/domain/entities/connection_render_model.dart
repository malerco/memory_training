import '../../presentation/bloc/repeat_pattern_bloc.dart';

class ConnectionRenderModel {
  final String key;
  final int row;
  final int col;
  final ConnectionDirection direction;
  final double left;
  final double top;
  final double width;
  final double height;
  final bool isActive;

  ConnectionRenderModel({
    required this.key,
    required this.row,
    required this.col,
    required this.direction,
    required this.left,
    required this.top,
    required this.width,
    required this.height,
    required this.isActive,
  });
}