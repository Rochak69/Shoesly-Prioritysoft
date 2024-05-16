import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class SelectableContainer extends StatelessWidget {
  const SelectableContainer({
    required this.title,
    required this.isSelected,
    super.key,
  });
  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(100),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: isSelected ? AppColors.black : AppColors.colorWhite,
            border: Border.all(color: AppColors.buttonBorderColor),),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: isSelected ? AppColors.colorWhite : AppColors.black,
              ),
        ),
      ),
    );
  }
}
