part of 'repeat_pattern_bloc.dart';

@freezed
class RepeatPatternState with _$RepeatPatternState {
  const factory RepeatPatternState({
    @Default(4) int rows,
    @Default(4) int cols,
    @Default([]) List<Connection> targetPattern,
    @Default([]) List<Connection> userPattern,
    @Default(GamePhase.memorizing) GamePhase phase,
    @Default(10) int memorizeTimeLeft,
    @Default(0) int playTime,
    @Default(false) bool isCorrect,
  }) = _RepeatPatternState;
}