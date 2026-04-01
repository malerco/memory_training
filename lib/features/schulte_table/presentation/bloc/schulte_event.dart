part of 'schulte_bloc.dart';

@freezed
class SchulteEvent with _$SchulteEvent {
  const factory SchulteEvent.start(int gridRows, int gridCols) = _Start;
  const factory SchulteEvent.selectNumber(int number) = _SelectNumber;
  const factory SchulteEvent.timerTick() = _TimerTick;
  const factory SchulteEvent.restart() = _Restart;
}