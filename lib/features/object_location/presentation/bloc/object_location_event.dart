part of 'object_location_bloc.dart';

@freezed
class ObjectLocationEvent with _$ObjectLocationEvent {
  const factory ObjectLocationEvent.start({required int gridSize}) = _Start;
  const factory ObjectLocationEvent.tapCell(int index) = _TapCell;
  const factory ObjectLocationEvent.submit() = _Submit;
  const factory ObjectLocationEvent.nextRound() = _NextRound;
  const factory ObjectLocationEvent.restart() = _Restart;
}