part of 'chimp_test_bloc.dart';

@freezed
class ChimpTestEvent with _$ChimpTestEvent {
  const factory ChimpTestEvent.start({required int gridSize}) = _Start;
  const factory ChimpTestEvent.tapCell(int index) = _TapCell;
  const factory ChimpTestEvent.nextRound() = _NextRound;
  const factory ChimpTestEvent.restart() = _Restart;
}