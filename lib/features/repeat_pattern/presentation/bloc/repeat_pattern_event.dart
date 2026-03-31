part of 'repeat_pattern_bloc.dart';

@freezed
class RepeatPatternEvent with _$RepeatPatternEvent {
  const factory RepeatPatternEvent.start({
    required int rows,
    required int cols,
  }) = _Start;
  const factory RepeatPatternEvent.toggleConnection(Connection connection) = _ToggleConnection;
  const factory RepeatPatternEvent.timerTick() = _TimerTick;
  const factory RepeatPatternEvent.submit() = _Submit;
  const factory RepeatPatternEvent.restart() = _Restart;
}