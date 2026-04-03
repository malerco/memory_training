part of 'gorbov_bloc.dart';

@freezed
class GorbovState with _$GorbovState {
  const factory GorbovState({
    @Default(5) int rows,
    @Default(5) int cols,
    @Default([]) List<GorbovNumber> numbers,
    @Default(1) int currentBlack,
    @Default(0) int currentRed,
    @Default(true) bool expectingBlack,
    @Default(0) int mistakes,
    @Default(0) int time,
    @Default(false) bool isCompleted,
    @Default({}) Set<String> foundNumbers,
    @Default(12) int maxBlack,
    @Default(13) int maxRed,
  }) = _GorbovState;
}