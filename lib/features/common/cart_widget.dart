import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';

class CartImage extends StatelessWidget {
  const CartImage({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(const CartRoute()),
      child: SvgPicture.asset(
        AppImages.cartSvg,
        height: 24,
      ),
    );
  }
}
