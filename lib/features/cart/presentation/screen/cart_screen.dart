import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:project_init/features/cart/presentation/widgets/cart_item.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/custom_app_bar.dart';
import 'package:project_init/features/common/top_shadow_box_decoration.dart';
import 'package:project_init/features/order_summary/data/model/order_summary_model.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      body: BlocBuilder<CartBloc, CartState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: state.products.isEmpty
                    ? Center(
                        child: Text(
                          'No items in cart',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        itemCount: state.products.length,
                        separatorBuilder: (context, index) =>
                            const VerticalSpacing(30),
                        itemBuilder: (context, index) => CartItem(
                          product: state.products[index],
                        ),
                      ),
              ),
              Container(
                decoration: boxDecorationTopShadow,
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Grand Total',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: AppColors.bodyTextGrey),
                        ),
                        Text(
                          _calculateTotal(state),
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ],
                    ),
                    AppOutlinedButton(
                      onPressed: () {
                        AutoRouter.of(context).push(
                            OrderSummaryRoute(order: OrderSummaryModel()),);
                      },
                      text: 'Check out',
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  String _calculateTotal(CartState state) {
    // ignore: omit_local_variable_types
    double total = 0;
    for (var i = 0; i < state.products.length; i++) {
      total = total + state.products[i].price;
    }

    return total.toString();
  }
}
