part of 'memory_matrix_bloc.dart';

@freezed
class MemoryMatrixEvent with _$MemoryMatrixEvent {
  const factory MemoryMatrixEvent.start() = _Start;
  const factory MemoryMatrixEvent.toggleCell(int index) = _ToggleCell;
  const factory MemoryMatrixEvent.timerTick() = _TimerTick;
  const factory MemoryMatrixEvent.submit() = _Submit;
  const factory MemoryMatrixEvent.nextRound() = _NextRound;
  const factory MemoryMatrixEvent.restart() = _Restart;
}