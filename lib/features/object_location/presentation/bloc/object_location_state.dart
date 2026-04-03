part of 'object_location_bloc.dart';

@freezed
class ObjectLocationState with _$ObjectLocationState {
  const factory ObjectLocationState({
    @Default(4) int gridSize,
    @Default(3) int objectCount,
    @Default({}) Map<int, int> objectPositions, // position -> objectType (icon index)
    @Default({}) Map<int, int> userAnswers, // position -> objectType
    @Default(ObjectLocationPhase.memorizing) ObjectLocationPhase phase,
    @Default(0) int score,
    @Default(0) int round,
    @Default(3) int memorizeTimeLeft,
    @Default(0) int correctCount,
  }) = _ObjectLocationState;
}