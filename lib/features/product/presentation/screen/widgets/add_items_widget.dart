import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/features/cart/data/model/cart_model.dart';
import 'package:project_init/features/common/app_outlined_button.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/product/data/model/product_model.dart';
import 'package:project_init/utlis/app_validators.dart';

class AddItemsWidget extends StatefulWidget {
  const AddItemsWidget({required this.product, super.key});
  final ProductModel product;

  @override
  State<AddItemsWidget> createState() => _AddItemsWidgetState();
}

class _AddItemsWidgetState extends State<AddItemsWidget> {
  late TextEditingController controller;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: '1');
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add to cart',
                  style: Theme.of(context).textTheme.headlineMedium,
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
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const VerticalSpacing(15),
            Form(
              key: _formKey,
              child: TextFormField(
                controller: controller,
                keyboardType: TextInputType.number,
                validator: (value) => AppValidators.greaterThanZero(value),
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Total Price'),
                    const VerticalSpacing(5),
                    Text(
                      '${widget.product.price}',
                      style: Theme.of(context).textTheme.headlineMedium,
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
    );
  }
}
