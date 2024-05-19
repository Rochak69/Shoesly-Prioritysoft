import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/common/app_scaffold.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Text(
          'SHOESLY',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      )
          .animate(
            onComplete: (controller) =>
                AutoRouter.of(context).replace(const HomeRoute()),
          )
          .slideY(
            begin: 1,
            duration: const Duration(milliseconds: 800),
            curve: Curves.decelerate,
            delay: const Duration(milliseconds: 300),
          )
          .then()
          .shakeY(curve: Curves.easeInOutCubicEmphasized),
    );
  }
}
