import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/app_state_wrapper.dart';
import 'package:project_init/features/common/cart_widget.dart';
import 'package:project_init/features/common/model/product_model.dart';
import 'package:project_init/features/common/review_widget.dart';
import 'package:project_init/features/common/shoe_container.dart';
import 'package:project_init/features/common/top_shadow_box_decoration.dart';
import 'package:project_init/features/product/presentation/screen/widgets/size_options.dart';
import 'package:project_init/features/review/presentation/bloc/review_bloc.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  const ProductScreen({required this.product, super.key});
  final ProductModel product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ReviewBloc>(context)
        .add(ReviewEvent.fetchAllReview(productId: widget.product.id));
  }

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
                  product: widget.product,
                  showColorOptions: true,
                  padding: const EdgeInsets.fromLTRB(31, 69, 31, 67),
                  height: 345,
                  imageSize: null,
                ),
                const VerticalSpacing(30),
                Text(
                  widget.product.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Row(
                  children: [Text('(${widget.product.reviews} Reviews)')],
                ),
                const VerticalSpacing(30),
                Text(
                  'Size',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const VerticalSpacing(10),
                SizeOptions(
                  sizes: widget.product.sizes,
                ),
                const VerticalSpacing(30),
                Text(
                  'Description',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const VerticalSpacing(10),
                Text(
                  widget.product.description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.bodyTextGrey,
                  ),
                ),
                const VerticalSpacing(30),
                BlocBuilder<ReviewBloc, ReviewState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Review (${widget.product.reviews})',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        const VerticalSpacing(10),
                        AppStateWrapper(
                          theStates: state.theStates,
                          successChild: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) =>
                                ReviewWidget(review: state.reviews[index]),
                            separatorBuilder: (context, index) =>
                                const VerticalSpacing(30),
                            itemCount: state.reviews.length > 3
                                ? 3
                                : state.reviews.length,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                AppOutlinedButton.white(
                  text: 'See All Review',
                  borderColor: AppColors.buttonBorderColor,
                  onPressed: () {
                    AutoRouter.of(context)
                        .push(ReviewRoute(shoeId: widget.product.id));
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
                      '\$${widget.product.price}',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                AppOutlinedButton(
                  onPressed: () {
                    BlocProvider.of<CartBloc>(context)
                        .add(CartEvent.addToCart(product: widget.product));
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
                                      Navigator.pop(context);
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
