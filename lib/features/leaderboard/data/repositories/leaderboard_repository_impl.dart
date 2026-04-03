import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/repositories/leaderboard_repository.dart';

@LazySingleton(as: LeaderboardRepository)
class LeaderboardRepositoryImpl implements LeaderboardRepository {
  final SharedPreferences _prefs;

  static const String _recordPrefix = 'record_';

  LeaderboardRepositoryImpl(this._prefs);

  @override
  Future<Map<String, int>> getAllRecords() async {
    final records = <String, int>{};
    final allKeys = _prefs.getKeys();
    for (final key in allKeys) {
      if (key.startsWith(_recordPrefix)) {
        final record = _prefs.getInt(key);
        if (record != null) {
          final trainerKey = key.substring(_recordPrefix.length);
          records[trainerKey] = record;
        }
      }
    }
    return records;
  }

  @override
  Future<int?> getRecord(String trainerKey) async {
    return _prefs.getInt('$_recordPrefix$trainerKey');
  }

  @override
  Future<void> setRecord(String trainerKey, int value, {bool higherIsBetter = false}) async {
    final currentRecord = await getRecord(trainerKey);
    final shouldSave = currentRecord == null || 
        (higherIsBetter ? value > currentRecord : value < currentRecord);
    if (shouldSave) {
      await _prefs.setInt('$_recordPrefix$trainerKey', value);
    }
  }

  static String createKey(String gameType, {int? rows, int? cols, int? gridSize}) {
    if (gridSize != null) {
      return '${gameType}_${gridSize}x$gridSize';
    } else if (rows != null && cols != null) {
      return '${gameType}_${rows}x$cols';
    }
    return gameType;
  }
}
