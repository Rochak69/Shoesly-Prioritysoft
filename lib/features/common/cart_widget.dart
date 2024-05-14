import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_init/constants/app_images.dart';

class CartImage extends StatelessWidget {
  const CartImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      AppImages.cartSvg,
      height: 24,
    );
  }
}
