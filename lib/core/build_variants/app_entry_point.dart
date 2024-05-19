import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:project_init/core/bloc/app_bloc_observer.dart';
import 'package:project_init/core/config/app_config.dart';
import 'package:project_init/core/dependency_injection/dependency_injection.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/core/theme/app_theme.dart';
import 'package:project_init/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:project_init/features/home/presentation/bloc/home_bloc.dart';
import 'package:project_init/features/review/presentation/bloc/review_bloc.dart';
import 'package:project_init/firebase_options.dart';
import 'package:project_init/firestore/app_firestore.dart';

class AppEntryPoint {
  AppEntryPoint(AppConfiguration buildVariant) {
    envSettings = buildVariant;
    initializeStartUpDependenciesAndRun(envSettings);
  }
  static AppConfiguration? envSettings;

  static Future<void> initializeStartUpDependenciesAndRun(
    AppConfiguration? envSettings,
  ) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    AppFirestore.init();
    await configureDependencies();

    if (Platform.isAndroid) {
      unawaited(_setHighRefreshRate());
    }
    Bloc.observer = const AppBlocObserver();

    unawaited(
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]),
    );

    runApp(const MyApp());
  }

  static Future<void> _setHighRefreshRate() async {
    try {
      await FlutterDisplayMode.setHighRefreshRate();
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus &&
            currentFocus.focusedChild != null) {
          FocusManager.instance.primaryFocus!.unfocus();
        }
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(
            create: (BuildContext context) => sl<HomeBloc>(),
          ),
          BlocProvider<CartBloc>(
            create: (BuildContext context) => sl<CartBloc>(),
          ),
          BlocProvider<ReviewBloc>(
            create: (BuildContext context) => sl<ReviewBloc>(),
          ),
        ],
        child: MaterialApp.router(
          theme: appTheme(),
          routerConfig: AppRouter.instance.config(),
          debugShowCheckedModeBanner: false,
        ),
      ),
      // ),
    );
  }
}
