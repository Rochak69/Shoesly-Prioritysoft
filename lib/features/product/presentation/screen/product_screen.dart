import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/cart/data/model/cart_model.dart';
import 'package:project_init/features/cart/presentation/bloc/cart_bloc.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/app_state_wrapper.dart';
import 'package:project_init/features/common/cart_widget.dart';
import 'package:project_init/features/common/review_widget.dart';
import 'package:project_init/features/common/shoe_container.dart';
import 'package:project_init/features/common/top_shadow_box_decoration.dart';
import 'package:project_init/features/product/data/model/product_model.dart';
import 'package:project_init/features/product/presentation/screen/widgets/size_options.dart';
import 'package:project_init/features/review/presentation/bloc/review_bloc.dart';
import 'package:project_init/utlis/app_validators.dart';

@RoutePage()
class ProductScreen extends StatefulWidget {
  const ProductScreen({required this.product, super.key});
  final ProductModel product;

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  late TextEditingController controller;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: '1');
    BlocProvider.of<ReviewBloc>(context)
        .add(ReviewEvent.fetchAllReview(productId: widget.product.id));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
                          'Review (${state.reviews.length})',
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
                  onPressed: () async {
                    await AutoRouter.of(context)
                        .push(ReviewRoute(shoeId: widget.product.id));
                    if (context.mounted) {
                      BlocProvider.of<ReviewBloc>(context).add(
                        ReviewEvent.fetchAllReview(
                          productId: widget.product.id,
                        ),
                      );
                    }
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
                  onPressed: () async {
                    final items = await showModalBottomSheet<CartModel>(
                      isScrollControlled: true,
                      useRootNavigator: true,
                      context: context,
                      builder: (context) => Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(30),
                          decoration: const BoxDecoration(
                            color: AppColors.colorWhite,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Add to cart',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  ),
                                  IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon: const Icon(
                                      Icons.close,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                              const VerticalSpacing(30),
                              Text(
                                'Quantity',
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              ),
                              const VerticalSpacing(15),
                              Form(
                                key: _formKey,
                                child: TextFormField(
                                  controller: controller,
                                  keyboardType: TextInputType.number,
                                  validator: (value) =>
                                      AppValidators.greaterThanZero(value),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  decoration: InputDecoration(
                                    focusColor: AppColors.black,
                                    suffix: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        InkWell(
                                          child: SvgPicture.asset(
                                            AppImages.minusCircle,
                                          ),
                                          onTap: () {
                                            if ((int.tryParse(
                                                      controller.text,
                                                    ) ??
                                                    2) <
                                                1) {
                                              return;
                                            }
                                            controller.text = ((int.tryParse(
                                                          controller.text,
                                                        ) ??
                                                        1) -
                                                    1)
                                                .toString();
                                            setState(() {});
                                          },
                                        ),
                                        const HorizontalSpacing(20),
                                        InkWell(
                                          child: SvgPicture.asset(
                                            AppImages.addCircle,
                                          ),
                                          onTap: () {
                                            controller.text = ((int.tryParse(
                                                          controller.text,
                                                        ) ??
                                                        0) +
                                                    1)
                                                .toString();
                                            setState(() {});
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const VerticalSpacing(30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Total Price'),
                                      const VerticalSpacing(5),
                                      Text(
                                        '${widget.product.price}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                    ],
                                  ),
                                  AppOutlinedButton(
                                    text: 'ADD TO CART',
                                    onPressed: () {
                                      if (!_formKey.currentState!.validate()) {
                                        return;
                                      }
                                      Navigator.pop(
                                        context,
                                        CartModel(
                                          count: int.tryParse(
                                                controller.text,
                                              ) ??
                                              1,
                                          product: widget.product,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                    if (items != null && context.mounted) {
                      BlocProvider.of<CartBloc>(context).add(
                        CartEvent.addToCart(
                          product: widget.product,
                          count: items.count,
                        ),
                      );
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
                              Text(
                                '${items.count} Item Total',
                                style: const TextStyle(
                                  color: AppColors.bodyTextGrey,
                                ),
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
                    }
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
