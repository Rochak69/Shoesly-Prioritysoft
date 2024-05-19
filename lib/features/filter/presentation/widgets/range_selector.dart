import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class RangeSelector extends StatefulWidget {
  const RangeSelector({super.key});

  @override
  State<RangeSelector> createState() => _RangeSelectorState();
}

class _RangeSelectorState extends State<RangeSelector> {
  RangeValues rangeValues = const RangeValues(0, 1750);
  @override
  Widget build(BuildContext context) {
    return RangeSlider(
      activeColor: AppColors.black,
      max: 1750,
      values: rangeValues,
      onChanged: (value) {
        setState(() {
          rangeValues = value;
        });
      },
    );
  }
}
