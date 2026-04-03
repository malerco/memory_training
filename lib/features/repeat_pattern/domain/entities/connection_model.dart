import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/bloc/repeat_pattern_bloc.dart';

part 'connection_model.freezed.dart';

@freezed
class Connection with _$Connection {
  const factory Connection({
    required int row,
    required int col,
    required ConnectionDirection direction,
  }) = _Connection;
}