import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_scaffold.dart';

@RoutePage()
class UnknownScreen extends StatelessWidget {
  const UnknownScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(),
      body: Container(
        color: AppColors.primaryDark,
      ),
    );
  }
}
