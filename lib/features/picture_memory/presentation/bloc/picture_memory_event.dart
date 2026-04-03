part of 'picture_memory_bloc.dart';

@freezed
class PictureMemoryEvent with _$PictureMemoryEvent {
  const factory PictureMemoryEvent.start({required int pictureCount}) = _Start;
  const factory PictureMemoryEvent.answer({required bool sawBefore}) = _Answer;
  const factory PictureMemoryEvent.restart() = _Restart;
}