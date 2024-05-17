import 'package:flutter/cupertino.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:project_init/constants/app_colors.dart';

class AppLoadingWidget extends StatelessWidget {
  const AppLoadingWidget({
    super.key,
    this.size = 52,
    this.color = AppColors.primaryDark,
  });
  const AppLoadingWidget.small({
    super.key,
    this.size = 28,
    this.color = AppColors.black,
  });
  final double size;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.halfTriangleDot(
        color: color,
        size: size,
      ),
    );
  }
}
