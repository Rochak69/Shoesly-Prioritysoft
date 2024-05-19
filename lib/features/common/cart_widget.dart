import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/cart/presentation/bloc/cart_bloc.dart';

class CartImage extends StatelessWidget {
  const CartImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartBloc, CartState>(
      builder: (context, state) {
        return InkWell(
          onTap: () => AutoRouter.of(context).push(const CartRoute()),
          child: Stack(
            children: [
              SvgPicture.asset(
                AppImages.cartSvg,
                height: 24,
              ),
              if (state.cartItems.isNotEmpty)
                const Positioned(
                  right: 0,
                  top: 5,
                  child: CircleAvatar(
                    radius: 4,
                    backgroundColor: AppColors.colorRed,
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
