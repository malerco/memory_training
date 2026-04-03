part of 'memory_matrix_bloc.dart';

@freezed
class MemoryMatrixState with _$MemoryMatrixState {
  const factory MemoryMatrixState({
    @Default(3) int gridSize,
    @Default(3) int highlightedCount,
    @Default([]) List<int> targetCells,
    @Default([]) List<int> userCells,
    @Default(MatrixPhase.memorizing) MatrixPhase phase,
    @Default(3) int memorizeTimeLeft,
    @Default(0) int totalTime,
    @Default(1) int currentRound,
    @Default(30) int totalRounds,
    @Default(0) int mistakes,
    @Default(false) bool roundCorrect,
  }) = _MemoryMatrixState;
}