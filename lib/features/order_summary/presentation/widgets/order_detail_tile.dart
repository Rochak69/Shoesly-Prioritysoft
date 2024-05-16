import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class OrderDetailTile extends StatelessWidget {
  const OrderDetailTile({
    required this.title,
    required this.subtitle,
    required this.price, super.key,
  });
  final String title;
  final String subtitle;
  final String price;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            subtitle,
            style: const TextStyle(color: AppColors.bodyTextGrey),
          ),
          Text(
            price,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}
