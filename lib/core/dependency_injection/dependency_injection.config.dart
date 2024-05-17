// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../../features/cart/presentation/bloc/cart_bloc.dart' as _i8;
import '../../features/home/data/source/home_remote_source.dart' as _i6;
import '../../features/home/presentation/bloc/home_bloc.dart' as _i11;
import '../../features/login/data/repository/login_repository_impl.dart'
    as _i14;
import '../../features/login/data/source/auth_remote_source.dart' as _i12;
import '../../features/login/domain/repository/login_repository.dart' as _i13;
import '../../features/login/domain/usecase/login_usecase.dart' as _i15;
import '../../features/login/presentation/bloc/login_bloc.dart' as _i16;
import '../../features/review/presentation/bloc/review_bloc.dart' as _i7;
import '../../firestore/app_firestore.dart' as _i5;
import '../config/environment_helper.dart' as _i3;
import '../preferences/preferences.dart' as _i10;
import 'dependency_injection.dart' as _i17;

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
    await gh.factoryAsync<_i4.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i5.AppFirestore>(() => _i5.AppFirestore());
    gh.factory<_i6.HomeRemoteSource>(() => _i6.HomeRemoteSource());
    gh.factory<_i7.ReviewBloc>(() => _i7.ReviewBloc());
    gh.factory<_i8.CartBloc>(() => _i8.CartBloc());
    gh.singleton<_i9.FlutterSecureStorage>(() => registerModule.secureStore);
    gh.factory<_i10.Preferences>(
        () => _i10.Preferences(gh<_i9.FlutterSecureStorage>()));
    gh.lazySingleton<_i11.HomeBloc>(
        () => _i11.HomeBloc(gh<_i6.HomeRemoteSource>()));
    gh.factory<_i12.LoginRemoteSource>(
        () => _i12.LoginRemoteSource(gh<_i10.Preferences>()));
    gh.factory<_i13.LoginRepository>(
        () => _i14.LoginRepositoryImpl(gh<_i12.LoginRemoteSource>()));
    gh.factory<_i15.LoginUsecase>(
        () => _i15.LoginUsecase(gh<_i13.LoginRepository>()));
    gh.lazySingleton<_i16.LoginBloc>(
        () => _i16.LoginBloc(gh<_i15.LoginUsecase>()));
    return this;
  }
}

class _$RegisterModule extends _i17.RegisterModule {}
