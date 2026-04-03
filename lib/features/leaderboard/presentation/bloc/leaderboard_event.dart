part of 'leaderboard_bloc.dart';

@freezed
class LeaderboardEvent with _$LeaderboardEvent {
  const factory LeaderboardEvent.load() = _Load;
  const factory LeaderboardEvent.saveRecord({
    required String gameType,
    required int value,
    int? rows,
    int? cols,
    int? gridSize,
    int? level,
    @Default(false) bool higherIsBetter,
  }) = _SaveRecord;
}