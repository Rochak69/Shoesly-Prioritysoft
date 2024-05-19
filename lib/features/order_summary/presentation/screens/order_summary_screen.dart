import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/custom_app_bar.dart';
import 'package:project_init/features/common/top_shadow_box_decoration.dart';

import 'package:project_init/features/order_summary/presentation/widgets/order_detail_tile.dart';
import 'package:project_init/features/order_summary/presentation/widgets/payment_option_tile.dart';

@RoutePage()
class OrderSummaryScreen extends StatelessWidget {
  const OrderSummaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(title: 'Order Summary'),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              children: [
                const Text(
                  'Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const VerticalSpacing(20),
                const PaymentDetailsTile(
                  title: 'Payment Method',
                  subtitle: 'Credit Card',
                ),
                const Divider(),
                const PaymentDetailsTile(
                  title: 'Payment Method',
                  subtitle: 'Credit Card',
                ),
                const VerticalSpacing(30),
                const Text(
                  'Order Detail',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const VerticalSpacing(20),
                const OrderDetailTile(
                  title: 'Jordan 1 Retro High Tie Dye',
                  subtitle: 'Nike . Red Grey . 40 . Qty 1',
                  price: r'$235,00',
                ),
                const VerticalSpacing(20),
                const OrderDetailTile(
                  title: 'Jordan 1 Retro High Tie Dye',
                  subtitle: 'Nike . Red Grey . 40 . Qty 1',
                  price: r'$235,00',
                ),
                const VerticalSpacing(20),
                const OrderDetailTile(
                  title: 'Jordan 1 Retro High Tie Dye',
                  subtitle: 'Nike . Red Grey . 40 . Qty 1',
                  price: r'$235,00',
                ),
                const VerticalSpacing(20),
                const Text(
                  'Payment Detail',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                const VerticalSpacing(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sub Total',
                      style: TextStyle(color: AppColors.bodyTextGrey),
                    ),
                    Text(
                      r'$705.00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const VerticalSpacing(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shipping',
                      style: TextStyle(color: AppColors.bodyTextGrey),
                    ),
                    Text(
                      r'$705.00',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const VerticalSpacing(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Shipping',
                      style: TextStyle(color: AppColors.bodyTextGrey),
                    ),
                    Text(
                      r'$705.00',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: boxDecorationTopShadow,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Grand Total',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: AppColors.textGrey),
                    ),
                    Text(
                      r'$235.00',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                AppOutlinedButton(
                  onPressed: () {},
                  text: 'Payment',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
