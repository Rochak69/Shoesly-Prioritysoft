import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';
import 'package:project_init/features/common/app_spacing.dart';

class ColorSelectionWidget extends StatelessWidget {
  const ColorSelectionWidget({
    required this.title,
    required this.isSelected,
    required this.color,
    super.key,
  });
  final String title;
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: isSelected ? AppColors.black : AppColors.buttonBorderColor,
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.buttonBorderColor),
              ),
              child: CircleAvatar(
                backgroundColor: color,
                radius: 10,
              ),
            ),
            const HorizontalSpacing(10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.black,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
