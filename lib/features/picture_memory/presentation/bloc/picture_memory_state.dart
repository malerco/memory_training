part of 'picture_memory_bloc.dart';

@freezed
class PictureMemoryState with _$PictureMemoryState {
  const factory PictureMemoryState({
    @Default(5) int pictureCount,
    @Default([]) List<int> seenPictures,
    @Default(0) int currentPicture,
    @Default(false) bool currentIsNew,
    @Default(PictureMemoryPhase.playing) PictureMemoryPhase phase,
    @Default(0) int score,
    @Default(0) int lives,
    @Default(0) int round,
  }) = _PictureMemoryState;
}