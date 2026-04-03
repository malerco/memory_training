part of 'n_back_bloc.dart';

@freezed
class NBackState with _$NBackState {
  const factory NBackState({
    @Default(2) int nLevel,
    @Default([]) List<int> sequence,
    @Default(0) int currentIndex,
    @Default(0) int score,
    @Default(0) int mistakes,
    @Default(0) int totalTrials,
    @Default(20) int maxTrials,
    @Default(NBackPhase.ready) NBackPhase phase,
    @Default(null) int? currentPosition,
    @Default(null) bool? lastFeedback,
    @Default(false) bool isActualMatch,
  }) = _NBackState;
}
