// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../features/login/data/repository/login_repository_impl.dart'
    as _i11;
import '../../features/login/data/source/auth_remote_source.dart' as _i9;
import '../../features/login/domain/repository/login_repository.dart' as _i10;
import '../../features/login/domain/usecase/login_usecase.dart' as _i12;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i13;
import '../config/environment_helper.dart' as _i4;
import '../dio_provider/dio_api_client.dart' as _i8;
import '../preferences/preferences.dart' as _i6;
import 'dependency_injection.dart' as _i14;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.singleton<_i3.Dio>(() => registerModule.dio);
    gh.factory<_i4.EnvironmentHelper>(() => _i4.EnvironmentHelper());
    gh.singleton<_i5.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i6.Preferences>(
        () => _i6.Preferences(gh<_i5.FlutterSecureStorage>()));
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i8.DioApiClient>(() => _i8.DioApiClient(
          gh<_i3.Dio>(),
          gh<_i4.EnvironmentHelper>(),
          gh<_i6.Preferences>(),
          gh<_i3.Dio>(),
        ));
    gh.factory<_i9.LoginRemoteSource>(() => _i9.LoginRemoteSource(
          gh<_i8.DioApiClient>(),
          gh<_i6.Preferences>(),
        ));
    gh.factory<_i10.LoginRepository>(
        () => _i11.LoginRepositoryImpl(gh<_i9.LoginRemoteSource>()));
    gh.factory<_i12.LoginUsecase>(
        () => _i12.LoginUsecase(gh<_i10.LoginRepository>()));
    gh.lazySingleton<_i13.LoginBloc>(
        () => _i13.LoginBloc(gh<_i12.LoginUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
