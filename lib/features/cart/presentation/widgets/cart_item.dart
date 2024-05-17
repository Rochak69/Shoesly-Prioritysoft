import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/model/product_model.dart';

class CartItem extends StatefulWidget {
  const CartItem({required this.product, super.key});
  final ProductModel product;

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem>
    with SingleTickerProviderStateMixin {
  late SlidableController controller;
  @override
  void initState() {
    super.initState();
    controller = SlidableController(this);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      key: ValueKey(Random()),
      controller: controller,
      endActionPane: ActionPane(
        extentRatio: 0.2,
        motion: const ScrollMotion(),
        children: [
          InkWell(
            onTap: () async {
              await controller.close();
              if (context.mounted) {
                BlocProvider.of<CartBloc>(context)
                    .add(CartEvent.removeFromCart(id: widget.product.id));
              }
            },
            child: Container(
              width: 80,
              height: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                color: AppColors.colorRed,
              ),
              child: Align(
                child: SvgPicture.asset(
                  AppImages.trashSvg,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 19,
              ),
              decoration: BoxDecoration(
                color: AppColors.backgroundGrey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                AppImages.shoePng,
                width: 70,
              ),
            ),
            const HorizontalSpacing(25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.product.name,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    widget.product.name,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.bodyTextGrey,
                        ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.product.price.toString(),
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const Spacer(),
                      const Icon(Icons.add),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
