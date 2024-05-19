import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class ColorOptions extends StatefulWidget {
  const ColorOptions({super.key});

  @override
  State<ColorOptions> createState() => _ColorOptionsState();
}

class _ColorOptionsState extends State<ColorOptions> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.colorWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15), // shadow color
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 3), // changes position of shadow (x, y)
          ),
        ],
      ),
      child: Wrap(
        children: colorOptions
            .asMap()
            .map(
              (index, element) => MapEntry(
                index,
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: ColorOption(
                      color: colorOptions[index],
                      isSelected: index == selectedindex,
                    ),
                  ),
                ),
              ),
            )
            .values
            .toList(),
      ),
    );
  }
}

class ColorOption extends StatelessWidget {
  const ColorOption({required this.color, this.isSelected = false, super.key});
  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.textGrey),
      ),
      child: CircleAvatar(
        radius: 10,
        backgroundColor: color,
        child: isSelected
            ? const Icon(
                Icons.check,
                size: 10,
                color: AppColors.colorWhite,
              )
            : null,
      ),
    );
  }
}

final List<Color> colorOptions = [
  const Color.fromARGB(255, 187, 15, 3),
  const Color.fromARGB(255, 0, 79, 3),
  const Color.fromARGB(255, 2, 65, 117),
  Colors.black,
];
