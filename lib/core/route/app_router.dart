import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_init/extensions/string_extension.dart';
import 'package:project_init/features/cart/presentation/screen/cart_screen.dart';
import 'package:project_init/features/common/model/product_model.dart';

import 'package:project_init/features/home/presentation/screens/home_screen.dart';
import 'package:project_init/features/login/presentation/screens/login_screen.dart';
import 'package:project_init/features/product/presentation/screen/product_screen.dart';
import 'package:project_init/features/splash/splash_screen.dart';
import 'package:project_init/features/unknown/unknown_screen.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          path: SplashRoute.name.routePath(),
          page: SplashRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          initial: true,
        ),
        CustomRoute(
          path: LoginRoute.name.routePath(),
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: UnknownRoute.name.routePath(),
          page: UnknownRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: HomeRoute.name.routePath(),
          page: HomeRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: ProductRoute.name.routePath(),
          page: ProductRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: CartRoute.name.routePath(),
          page: CartRoute.page,
        ),
      ];
  static final instance = AppRouter();
}
