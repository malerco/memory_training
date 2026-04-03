import 'package:injectable/injectable.dart';

import '../repositories/leaderboard_repository.dart';

@injectable
class GetRecordUseCase {
  final LeaderboardRepository _repository;

  GetRecordUseCase(this._repository);

  Future<int?> call(String trainerKey) async {
    return _repository.getRecord(trainerKey);
  }
}
