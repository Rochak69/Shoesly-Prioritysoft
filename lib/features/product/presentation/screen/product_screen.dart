import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/cart_widget.dart';
import 'package:project_init/features/common/model/product_model.dart';
import 'package:project_init/features/common/review_widget.dart';
import 'package:project_init/features/common/shoe_container.dart';
import 'package:project_init/features/common/top_shadow_box_decoration.dart';
import 'package:project_init/features/product/presentation/screen/widgets/size_options.dart';

@RoutePage()
class ProductScreen extends StatelessWidget {
  const ProductScreen({required this.product, super.key});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        actions: const [CartImage(), HorizontalSpacing(30)],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              children: [
                ShoeContainer(
                  product: product,
                  showColorOptions: true,
                  padding: const EdgeInsets.fromLTRB(31, 69, 31, 67),
                  height: 345,
                  imageSize: null,
                ),
                const VerticalSpacing(30),
                Text(
                  'Jordan 1 Retro High Tie Dye',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const Row(
                  children: [Text('(1045 Reviews)')],
                ),
                const VerticalSpacing(30),
                Text(
                  'Size',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const VerticalSpacing(10),
                const SizeOptions(),
                const VerticalSpacing(30),
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const VerticalSpacing(10),
                const Text(
                  "Engineered to crush any movement-based workout, these On sneakers enhance the label's original Cloud sneaker with cutting edge technologies for a pair.",
                  style: TextStyle(fontSize: 14, color: AppColors.bodyTextGrey),
                ),
                const VerticalSpacing(30),
                Text(
                  'Review (1045)',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const VerticalSpacing(10),
                const ReviewWidget(),
                const VerticalSpacing(30),
                const ReviewWidget(),
                const VerticalSpacing(30),
                const ReviewWidget(),
                const VerticalSpacing(30),
                AppOutlinedButton.white(
                  text: 'See All Review',
                  borderColor: AppColors.buttonBorderColor,
                  onPressed: () {
                    AutoRouter.of(context).push(ReviewRoute(shoeId: 1));
                  },
                ),
                const VerticalSpacing(38),
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
                      'Price',
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
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        padding: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                          color: AppColors.colorWhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              AppImages.addedToCart,
                              width: 100,
                            ),
                            const VerticalSpacing(20),
                            const Text(
                              'Added to cart',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const VerticalSpacing(5),
                            const Text(
                              '1 Item Total',
                              style: TextStyle(color: AppColors.bodyTextGrey),
                            ),
                            const VerticalSpacing(20),
                            Row(
                              children: [
                                Expanded(
                                  child: AppOutlinedButton.white(
                                    text: 'Back Explore',
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                                const HorizontalSpacing(15),
                                Expanded(
                                  child: AppOutlinedButton(
                                    text: 'To Cart',
                                    onPressed: () {
                                      AutoRouter.of(context)
                                          .push(const CartRoute());
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  text: 'ADD TO CART',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
