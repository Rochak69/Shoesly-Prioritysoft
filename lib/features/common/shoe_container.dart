import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/product/data/model/product_model.dart';

class ShoeContainer extends StatelessWidget {
  const ShoeContainer({
    required this.product,
    super.key,
    this.imageSize = const Size(120, 85),
    this.height = 150,
    this.padding = const EdgeInsets.fromLTRB(15, 15, 15, 22),
    this.showColorOptions = false,
  });
  final ProductModel product;
  final Size? imageSize;
  final double height;
  final EdgeInsets padding;
  final bool showColorOptions;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundGrey,
        borderRadius: BorderRadius.circular(20),
      ),
      height: height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!showColorOptions)
            Container(
              padding: const EdgeInsets.only(bottom: 4),
              child: Image.asset(
                product.logo,
                width: 24,
                height: 24,
              ),
            ),
          Expanded(
            child: Center(
              child: Image.asset(
                product.image,
                width: imageSize?.width,
                height: imageSize?.height,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
