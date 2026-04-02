part of 'sequence_memory_bloc.dart';

@freezed
class SequenceMemoryEvent with _$SequenceMemoryEvent {
  const factory SequenceMemoryEvent.start(int gridSize) = _Start;
  const factory SequenceMemoryEvent.showSequence() = _ShowSequence;
  const factory SequenceMemoryEvent.showNextItem(int index) = _ShowNextItem;
  const factory SequenceMemoryEvent.hideItem(int nextIndex) = _HideItem;
  const factory SequenceMemoryEvent.finishShowing() = _FinishShowing;
  const factory SequenceMemoryEvent.userTap(int position) = _UserTap;
  const factory SequenceMemoryEvent.nextLevel() = _NextLevel;
  const factory SequenceMemoryEvent.restart() = _Restart;
}