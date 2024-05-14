import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_spacing.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 20,
        ),
        const HorizontalSpacing(15),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nolan Carder',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  Text(
                    'Today',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: AppColors.textGrey),
                  ),
                ],
              ),
              const VerticalSpacing(5),
              const Icon(
                Icons.star,
                size: 12,
                color: AppColors.yellow,
              ),
              const VerticalSpacing(10),
              Text(
                'Perfect for keeping your feet dry and warm in damp conditions.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
