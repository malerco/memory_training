part of 'gorbov_bloc.dart';

@freezed
class GorbovEvent with _$GorbovEvent {
  const factory GorbovEvent.start({required int rows, required int cols}) = _Start;
  const factory GorbovEvent.selectNumber(GorbovNumber number) = _SelectNumber;
  const factory GorbovEvent.timerTick() = _TimerTick;
  const factory GorbovEvent.restart() = _Restart;
}