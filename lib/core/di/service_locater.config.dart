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
    return this;
  }
}

class _$RegisterModule extends _i983.RegisterModule {}
