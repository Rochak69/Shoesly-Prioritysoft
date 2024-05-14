import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';

@RoutePage()
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 30),
        itemCount: 10,
        separatorBuilder: (context, index) => const VerticalSpacing(30),
        itemBuilder: (context, index) => Slidable(
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              Container(
                width: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  color: AppColors.colorRed,
                ),
                child: const Icon(Icons.delete),
              ),
            ],
          ),

          // The child of the Slidable is what the user sees when the
          // component is not dragged.
          child: const ListTile(title: Text('Slide me')),
        ),
      ),
    );
  }
}
