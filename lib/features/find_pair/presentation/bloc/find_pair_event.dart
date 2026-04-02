part of 'find_pair_bloc.dart';

@freezed
class FindPairEvent with _$FindPairEvent {
  const factory FindPairEvent.start({required int rows, required int cols}) = _Start;
  const factory FindPairEvent.flipCard(int index) = _FlipCard;
  const factory FindPairEvent.timerTick() = _TimerTick;
  const factory FindPairEvent.hideCards() = _HideCards;
  const factory FindPairEvent.startPlaying() = _StartPlaying;
  const factory FindPairEvent.restart() = _Restart;
}