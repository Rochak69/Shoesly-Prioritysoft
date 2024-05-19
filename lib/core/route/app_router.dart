import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_init/extensions/string_extension.dart';
import 'package:project_init/features/cart/presentation/screen/cart_screen.dart';
import 'package:project_init/features/filter/presentation/screens/filter_screen.dart';
import 'package:project_init/features/home/presentation/screens/home_screen.dart';
import 'package:project_init/features/order_summary/presentation/screens/order_summary_screen.dart';
import 'package:project_init/features/product/data/model/product_model.dart';
import 'package:project_init/features/product/presentation/screen/product_screen.dart';
import 'package:project_init/features/review/presentation/screens/review_screen.dart';
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
          transitionsBuilder: TransitionsBuilders.slideLeft,
          initial: true,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: UnknownRoute.name.routePath(),
          page: UnknownRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: HomeRoute.name.routePath(),
          page: HomeRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: ProductRoute.name.routePath(),
          page: ProductRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: CartRoute.name.routePath(),
          page: CartRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: OrderSummaryRoute.name.routePath(),
          page: OrderSummaryRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideLeft,
          path: ReviewRoute.name.routePath(),
          page: ReviewRoute.page,
        ),
        CustomRoute(
          transitionsBuilder: TransitionsBuilders.slideBottom,
          path: FilterRoute.name.routePath(),
          page: FilterRoute.page,
        ),
      ];
  static final instance = AppRouter();
}
