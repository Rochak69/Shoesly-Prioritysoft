import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class SizeOptions extends StatelessWidget {
  const SizeOptions({required this.sizes, super.key});
  final List<int> sizes;

  @override
  Widget build(BuildContext context) {
    return Wrap(
        children: sizes
            .asMap()
            .map((i, element) => MapEntry(i, SizeOption(size: sizes[i])))
            .values
            .toList(),);
  }
}

class SizeOption extends StatelessWidget {
  const SizeOption({required this.size, super.key});
  final int size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.textGrey),
      ),
      child: CircleAvatar(
        backgroundColor: AppColors.transparent,
        child: Text(size.toString()),
      ),
    );
  }
}
