import 'package:injectable/injectable.dart';

import '../repositories/leaderboard_repository.dart';

@injectable
class SaveRecordUseCase {
  final LeaderboardRepository _repository;

  SaveRecordUseCase(this._repository);

  Future<void> call({
    required String gameType,
    required int value,
    int? rows,
    int? cols,
    int? gridSize,
    int? level,
    bool higherIsBetter = false,
  }) async {
    String key;
    if (level != null) {
      key = '${gameType}_level_$level';
    } else if (gridSize != null) {
      key = '${gameType}_${gridSize}x$gridSize';
    } else if (rows != null && cols != null) {
      key = '${gameType}_${rows}x$cols';
    } else {
      key = gameType;
    }
    
    await _repository.setRecord(key, value, higherIsBetter: higherIsBetter);
  }
}
