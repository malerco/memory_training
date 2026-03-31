import 'package:injectable/injectable.dart';

import '../repositories/leaderboard_repository.dart';

@injectable
class GetAllRecordsUseCase {
  final LeaderboardRepository _repository;

  GetAllRecordsUseCase(this._repository);

  Future<Map<String, int>> call() async {
    return _repository.getAllRecords();
  }
}
