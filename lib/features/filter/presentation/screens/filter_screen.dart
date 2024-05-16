import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/custom_app_bar.dart';

@RoutePage()
class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(title: 'Filter'),
      body: Container(),
    );
  }
}
