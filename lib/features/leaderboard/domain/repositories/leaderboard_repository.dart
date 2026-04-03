abstract interface class LeaderboardRepository {
  Future<Map<String, int>> getAllRecords();
  Future<int?> getRecord(String trainerKey);
  Future<void> setRecord(String trainerKey, int value, {bool higherIsBetter = false});
}
