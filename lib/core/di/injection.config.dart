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

import '../../features/chimp_test/presentation/bloc/chimp_test_bloc.dart'
    as _i499;
import '../../features/find_pair/presentation/bloc/find_pair_bloc.dart' as _i32;
import '../../features/gorbov_schulte/presentation/bloc/gorbov_bloc.dart'
    as _i1024;
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
import '../../features/memory_matrix/presentation/bloc/memory_matrix_bloc.dart'
    as _i632;
import '../../features/n_back/presentation/bloc/n_back_bloc.dart' as _i475;
import '../../features/object_location/presentation/bloc/object_location_bloc.dart'
    as _i214;
import '../../features/picture_memory/presentation/bloc/picture_memory_bloc.dart'
    as _i337;
import '../../features/repeat_pattern/presentation/bloc/repeat_pattern_bloc.dart'
    as _i717;
import '../../features/schulte_table/presentation/bloc/schulte_bloc.dart'
    as _i676;
import '../../features/sequence_memory/presentation/bloc/sequence_memory_bloc.dart'
    as _i1068;
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
    gh.factory<_i676.SchulteBloc>(() => _i676.SchulteBloc());
    gh.factory<_i1024.GorbovBloc>(() => _i1024.GorbovBloc());
    gh.factory<_i32.FindPairBloc>(() => _i32.FindPairBloc());
    gh.factory<_i632.MemoryMatrixBloc>(() => _i632.MemoryMatrixBloc());
    gh.factory<_i475.NBackBloc>(() => _i475.NBackBloc());
    gh.factory<_i1068.SequenceMemoryBloc>(() => _i1068.SequenceMemoryBloc());
    gh.factory<_i499.ChimpTestBloc>(() => _i499.ChimpTestBloc());
    gh.factory<_i337.PictureMemoryBloc>(() => _i337.PictureMemoryBloc());
    gh.factory<_i214.ObjectLocationBloc>(() => _i214.ObjectLocationBloc());
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
