import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_spacing.dart';

class SizeOptions extends StatelessWidget {
  const SizeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizeOption(),
        HorizontalSpacing(15),
        SizeOption(),
        HorizontalSpacing(15),
        SizeOption(),
        HorizontalSpacing(15),
        SizeOption(),
        HorizontalSpacing(15),
        SizeOption(),
      ],
    );
  }
}

class SizeOption extends StatelessWidget {
  const SizeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.textGrey)),
      child: const CircleAvatar(
        backgroundColor: AppColors.transparent,
        child: Text('39'),
      ),
    );
  }
}
