import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecases/get_all_records_usecase.dart';
import '../../domain/usecases/save_record_usecase.dart';

part 'leaderboard_bloc.freezed.dart';
part 'leaderboard_event.dart';
part 'leaderboard_state.dart';

@injectable
class LeaderboardBloc extends Bloc<LeaderboardEvent, LeaderboardState> {
  final GetAllRecordsUseCase _getAllRecordsUseCase;
  final SaveRecordUseCase _saveRecordUseCase;

  LeaderboardBloc(
    this._getAllRecordsUseCase,
    this._saveRecordUseCase,
  ) : super(const LeaderboardState()) {
    on<_Load>(_onLoad);
    on<_SaveRecord>(_onSaveRecord);
  }

  Future<void> _onLoad(_Load event, Emitter<LeaderboardState> emit) async {
    emit(state.copyWith(isLoading: true));
    final records = await _getAllRecordsUseCase();
    emit(state.copyWith(records: records, isLoading: false));
  }
  
  Future<void> _onSaveRecord(_SaveRecord event, Emitter<LeaderboardState> emit) async {
    await _saveRecordUseCase(
      gameType: event.gameType,
      value: event.value,
      rows: event.rows,
      cols: event.cols,
      gridSize: event.gridSize,
      level: event.level,
      higherIsBetter: event.higherIsBetter,
    );
  }
}
