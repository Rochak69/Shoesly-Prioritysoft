// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/login/data/repository/login_repository_impl.dart' as _i9;
import '../../features/login/data/source/auth_remote_source.dart' as _i7;
import '../../features/login/domain/repository/login_repository.dart' as _i8;
import '../../features/login/domain/usecase/login_usecase.dart' as _i10;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i11;
import '../config/environment_helper.dart' as _i3;
import '../preferences/preferences.dart' as _i5;
import 'dependency_injection.dart' as _i12;

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
    gh.factory<_i3.EnvironmentHelper>(() => _i3.EnvironmentHelper());
    gh.singleton<_i4.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i5.Preferences>(
        () => _i5.Preferences(gh<_i4.FlutterSecureStorage>()));
    await gh.factoryAsync<_i6.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i7.LoginRemoteSource>(
        () => _i7.LoginRemoteSource(gh<_i5.Preferences>()));
    gh.factory<_i8.LoginRepository>(
        () => _i9.LoginRepositoryImpl(gh<_i7.LoginRemoteSource>()));
    gh.factory<_i10.LoginUsecase>(
        () => _i10.LoginUsecase(gh<_i8.LoginRepository>()));
    gh.lazySingleton<_i11.LoginBloc>(
        () => _i11.LoginBloc(gh<_i10.LoginUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i12.RegisterModule {}
