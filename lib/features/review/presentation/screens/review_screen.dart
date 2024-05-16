import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_scaffold.dart';
import 'package:project_init/features/common/app_spacing.dart';
import 'package:project_init/features/common/custom_app_bar.dart';
import 'package:project_init/features/common/review_widget.dart';

@RoutePage()
class ReviewScreen extends StatelessWidget {
  const ReviewScreen({required this.shoeId, super.key});
  final int shoeId;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: CustomAppBar(
        title: 'Review (1045)',
        actions: [
          Row(
            children: [
              const Icon(
                Icons.star,
                color: AppColors.yellow,
              ),
              const HorizontalSpacing(5),
              Text(
                '4.5',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const HorizontalSpacing(15),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          const VerticalSpacing(20),
          SizedBox(
            height: 30,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              separatorBuilder: (context, index) => const HorizontalSpacing(20),
              itemBuilder: (context, index) => Text(
                'All',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(30),
              itemBuilder: (context, index) => const ReviewWidget(),
              separatorBuilder: (context, index) => const VerticalSpacing(20),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
