import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    required this.text,
    super.key,
    this.onPressed,
    this.borderColor,
    this.textColor = AppColors.colorWhite,
    this.backgroundColor = AppColors.black,
    this.height,
    this.width,
    this.isLoading = false,
  });
  const AppOutlinedButton.white({
    required this.text,
    super.key,
    this.onPressed,
    this.borderColor,
    this.textColor = AppColors.black,
    this.backgroundColor = AppColors.colorWhite,
    this.height,
    this.width,
    this.isLoading = false,
  });
  const AppOutlinedButton.orange({
    required this.text,
    super.key,
    this.onPressed,
    this.borderColor,
    this.textColor = Colors.white,
    this.backgroundColor = AppColors.colorRed,
    this.height,
    this.width,
    this.isLoading = false,
  });
  final String text;
  final void Function()? onPressed;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final double? height;
  final double? width;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed,
        style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
              side: borderColor == null
                  ? null
                  : WidgetStatePropertyAll(
                      BorderSide(color: borderColor!),
                    ),
              backgroundColor: onPressed == null
                  ? const WidgetStatePropertyAll(AppColors.textFieldGrey)
                  : WidgetStatePropertyAll(backgroundColor),
            ),
        child: isLoading
            ? const CircularProgressIndicator()
            : Text(
                text,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
      ),
    );
  }
}
