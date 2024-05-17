import 'package:flutter/material.dart';
import 'package:project_init/enum/the_states.dart';
import 'package:project_init/features/common/app_loading_widget.dart';

class AppStateWrapper extends StatelessWidget {
  const AppStateWrapper({
    required this.successChild,
    required this.theStates,
    super.key,
    this.initialChild = const Center(
      child: AppLoadingWidget.small(),
    ),
    this.errorChild = const Text('ERROR'),
  });
  final Widget successChild;
  final Widget initialChild;
  final Widget errorChild;
  final TheStates theStates;

  @override
  Widget build(BuildContext context) {
    return theStates == TheStates.success
        ? successChild
        : theStates == TheStates.error
            ? errorChild
            : initialChild;
  }
}
