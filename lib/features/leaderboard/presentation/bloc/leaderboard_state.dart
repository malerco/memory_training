part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardState with _$LeaderboardState {
  const factory LeaderboardState({
    @Default({}) Map<String, int> records,
    @Default(false) bool isLoading,
  }) = _LeaderboardState;
}