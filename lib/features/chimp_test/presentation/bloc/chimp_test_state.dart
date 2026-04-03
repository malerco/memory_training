part of 'chimp_test_bloc.dart';

@freezed
class ChimpTestState with _$ChimpTestState {
  const factory ChimpTestState({
    @Default(4) int gridSize,
    @Default(4) int numbersCount,
    @Default({}) Map<int, int> numberPositions, // position -> number
    @Default(1) int nextExpectedNumber,
    @Default(ChimpTestPhase.showing) ChimpTestPhase phase,
    @Default(0) int score,
    @Default(0) int highestLevel,
    @Default(false) bool showNumbers,
  }) = _ChimpTestState;
}