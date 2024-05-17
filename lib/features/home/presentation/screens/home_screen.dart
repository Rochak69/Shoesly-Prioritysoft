import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/constants/app_images.dart';
import 'package:project_init/core/route/app_router.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/cart_widget.dart';
import 'package:project_init/features/common/model/product_model.dart';
import 'package:project_init/features/common/shoe_container.dart';
import 'package:project_init/firestore/app_firestore.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Discover',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  const CartImage(),
                ],
              ),
            ),
            SizedBox(
              height: 30,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index) =>
                    const HorizontalSpacing(20),
                itemBuilder: (context, index) => Text(
                  'Nike',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.7,
                  crossAxisCount: 2,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) => InkWell(
                  borderRadius: BorderRadius.circular(20),
                  onTap: () => AutoRouter.of(context)
                      .push(ProductRoute(product: products[index])),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ShoeContainer(product: products[index]),
                      const VerticalSpacing(10),
                      Text(
                        products[index].name,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star,
                            size: 12,
                            color: AppColors.yellow,
                          ),
                          Text(
                            products[index].rating.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(fontWeight: FontWeight.w700),
                          ),
                          const HorizontalSpacing(5),
                          Text(
                            '(${products[index].reviews} Reviews)',
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textGrey,
                                    ),
                          ),
                        ],
                      ),
                      Text(
                        r'$' '${products[index].price}',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          // AutoRouter.of(context).push(const FilterRoute());
          final productData = products
              .map(
                (e) => e.toJson(),
              )
              .toList();
          final a = await AppFirestore.productsCollection().get();
          final b = a;
          print(a.docs.first.data());
        },
        label: Row(
          children: [
            SvgPicture.asset(
              AppImages.filterSvg,
              width: 20,
            ),
            const HorizontalSpacing(16),
            const Text(
              'FILTER',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
