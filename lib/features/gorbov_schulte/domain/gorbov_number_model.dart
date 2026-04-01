import 'package:freezed_annotation/freezed_annotation.dart';

import '../presentation/bloc/gorbov_bloc.dart';

part 'gorbov_number_model.freezed.dart';

@freezed
class GorbovNumber with _$GorbovNumber {
  const factory GorbovNumber({
    required int value,
    required NumberColor color,
  }) = _GorbovNumber;
}