// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/leaderboard/data/repositories/leaderboard_repository_impl.dart'
    as _i1008;
import '../../features/leaderboard/domain/repositories/leaderboard_repository.dart'
    as _i655;
import '../../features/leaderboard/domain/usecases/get_all_records_usecase.dart'
    as _i1037;
import '../../features/leaderboard/domain/usecases/get_record_usecase.dart'
    as _i669;
import '../../features/leaderboard/domain/usecases/save_record_usecase.dart'
    as _i950;
import '../../features/leaderboard/presentation/bloc/leaderboard_bloc.dart'
    as _i957;
import '../../features/repeat_pattern/presentation/bloc/repeat_pattern_bloc.dart'
    as _i717;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.factory<_i717.RepeatPatternBloc>(() => _i717.RepeatPatternBloc());
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i655.LeaderboardRepository>(
      () => _i1008.LeaderboardRepositoryImpl(gh<_i460.SharedPreferences>()),
    );
    gh.factory<_i1037.GetAllRecordsUseCase>(
      () => _i1037.GetAllRecordsUseCase(gh<_i655.LeaderboardRepository>()),
    );
    gh.factory<_i669.GetRecordUseCase>(
      () => _i669.GetRecordUseCase(gh<_i655.LeaderboardRepository>()),
    );
    gh.factory<_i950.SaveRecordUseCase>(
      () => _i950.SaveRecordUseCase(gh<_i655.LeaderboardRepository>()),
    );
    gh.factory<_i957.LeaderboardBloc>(
      () => _i957.LeaderboardBloc(
        gh<_i1037.GetAllRecordsUseCase>(),
        gh<_i950.SaveRecordUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
