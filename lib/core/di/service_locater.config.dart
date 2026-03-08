// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:avnzor_task/core/networking/api_client.dart' as _i656;
import 'package:avnzor_task/core/networking/dio_factory.dart' as _i983;
import 'package:avnzor_task/core/routing/app_router.dart' as _i132;
import 'package:avnzor_task/features/search/data/data_sources/base_search_data_source.dart'
    as _i674;
import 'package:avnzor_task/features/search/data/data_sources/search_remote_data_source.dart'
    as _i678;
import 'package:avnzor_task/features/search/data/repository/search_repository_impl.dart'
    as _i34;
import 'package:avnzor_task/features/search/domain/repository/search_repository.dart'
    as _i980;
import 'package:avnzor_task/features/search/domain/usecases/get_searched_items_usecase.dart'
    as _i790;
import 'package:avnzor_task/features/search/presentation/controller/search_cubit.dart'
    as _i983;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    gh.singleton<_i132.AppRouter>(() => _i132.AppRouter());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i656.ApiClient>(() => _i656.ApiClient(gh<_i361.Dio>()));
    gh.lazySingleton<_i674.BaseSearchDataSource>(
      () => _i678.SearchRemoteDataSourceImpl(gh<_i656.ApiClient>()),
    );
    gh.lazySingleton<_i980.SearchRepository>(
      () => _i34.SearchRepositoryImpl(gh<_i674.BaseSearchDataSource>()),
    );
    gh.factory<_i790.GetSearchedItemsUseCase>(
      () => _i790.GetSearchedItemsUseCase(gh<_i980.SearchRepository>()),
    );
    gh.factory<_i983.SearchCubit>(
      () => _i983.SearchCubit(gh<_i790.GetSearchedItemsUseCase>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i983.RegisterModule {}
