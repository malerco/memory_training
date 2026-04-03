part of 'find_pair_bloc.dart';

@freezed
class FindPairState with _$FindPairState {
  const factory FindPairState({
    @Default(4) int rows,
    @Default(4) int cols,
    @Default([]) List<FindPairCardModel> cards,
    @Default(FindPairPhase.preview) FindPairPhase phase,
    @Default(10) int previewTimeLeft,
    @Default(0) int playTime,
    @Default(0) int mistakes,
    @Default(null) int? firstFlippedIndex,
    @Default(false) bool isProcessing,
  }) = _FindPairState;
}