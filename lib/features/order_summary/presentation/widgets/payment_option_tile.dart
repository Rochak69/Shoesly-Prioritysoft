import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class PaymentDetailsTile extends StatelessWidget {
  const PaymentDetailsTile({
    required this.title,
    required this.subtitle,
    super.key,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(color: AppColors.bodyTextGrey),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: AppColors.textGrey,
        size: 16,
      ),
    );
  }
}
