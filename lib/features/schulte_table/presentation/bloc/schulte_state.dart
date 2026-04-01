part of 'schulte_bloc.dart';

@freezed
class SchulteState with _$SchulteState {
  const factory SchulteState({
    @Default(5) int gridRows,
    @Default(5) int gridCols,
    @Default([]) List<int> numbers,
    @Default(1) int currentNumber,
    @Default(0) int mistakes,
    @Default(0) int time,
    @Default(false) bool isCompleted,
    @Default({}) Set<int> foundNumbers,
  }) = _SchulteState;
}