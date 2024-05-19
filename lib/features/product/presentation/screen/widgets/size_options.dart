import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class SizeOptions extends StatefulWidget {
  const SizeOptions({required this.sizes, super.key});
  final List<int> sizes;

  @override
  State<SizeOptions> createState() => _SizeOptionsState();
}

class _SizeOptionsState extends State<SizeOptions> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: widget.sizes
          .asMap()
          .map(
            (index, element) => MapEntry(
              index,
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: () {
                    setState(() {
                      selectedindex = index;
                    });
                  },
                  child: SizeOption(
                    size: widget.sizes[index],
                    isSelected: index == selectedindex,
                  ),
                ),
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}

class SizeOption extends StatelessWidget {
  const SizeOption({required this.size, this.isSelected = false, super.key});
  final int size;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.textGrey),
      ),
      child: CircleAvatar(
        backgroundColor: isSelected ? AppColors.black : AppColors.colorWhite,
        child: Text(
          size.toString(),
          style: TextStyle(
            color: isSelected ? AppColors.colorWhite : AppColors.black,
          ),
        ),
      ),
    );
  }
}
