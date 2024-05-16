import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/custom_app_bar.dart';
import 'package:project_init/features/common/model/product_model.dart';
import 'package:project_init/features/common/top_shadow_box_decoration.dart';
import 'package:project_init/features/order_summary/data/model/order_summary_model.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: const CustomAppBar(title: 'Cart'),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 30),
              itemCount: 10,
              separatorBuilder: (context, index) => const VerticalSpacing(30),
              itemBuilder: (context, index) => Slidable(
                endActionPane: ActionPane(
                  extentRatio: 0.2,
                  motion: const ScrollMotion(),
                  children: [
                    InkWell(
                      onTap: () {},
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
                          products[index].image,
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
                              products[index].name,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            Text(
                              products[index].name,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: AppColors.bodyTextGrey),
                            ),
                            Row(
                              children: [
                                Text(
                                  products[index].price.toString(),
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
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
              ),
            ),
          ),
          Container(
            decoration: boxDecorationTopShadow,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
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
                      r'$705.00',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                AppOutlinedButton(
                  onPressed: () {
                    AutoRouter.of(context)
                        .push(OrderSummaryRoute(order: OrderSummaryModel()));
                  },
                  text: 'Check out',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
