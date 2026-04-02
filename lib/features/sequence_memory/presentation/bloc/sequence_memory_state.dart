part of 'sequence_memory_bloc.dart';

@freezed
class SequenceMemoryState with _$SequenceMemoryState {
  const factory SequenceMemoryState({
    @Default(4) int gridSize,
    @Default([]) List<int> sequence,
    @Default(0) int userIndex,
    @Default(1) int level,
    @Default(0) int score,
    @Default(SequencePhase.ready) SequencePhase phase,
    @Default(null) int? showingIndex,
    @Default(null) int? lastTappedPosition,
    @Default(false) bool lastTapCorrect,
  }) = _SequenceMemoryState;
}