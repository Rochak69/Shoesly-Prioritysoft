import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_init/constants/app_colors.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.validator,
    this.hintText,
    this.prefixIcon,
    this.textEditingController,
    this.decoration,
    this.textInputType = TextInputType.emailAddress,
    this.obscureText = false,
    this.suffixIcon,
    this.textInputAction = TextInputAction.next,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.onTap,
    this.isReadOnly = false,
    this.scroll = EdgeInsets.zero,
  });

  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final TextEditingController? textEditingController;
  final TextInputType? textInputType;
  final InputDecoration? decoration;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool isReadOnly;
  final void Function()? onTap;
  final EdgeInsets scroll;

  final AutovalidateMode autovalidateMode;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      scrollPadding: scroll,
      readOnly: isReadOnly,
      onTap: () {
        HapticFeedback.lightImpact();
        onTap?.call();
      },
      obscureText: obscureText,
      validator: validator,
      keyboardType: textInputType,
      controller: textEditingController,
      textInputAction: textInputAction,
      autofocus: true,
      style: const TextStyle(color: AppColors.black),
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        fillColor: AppColors.colorWhite,
        hintText: hintText,
        contentPadding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
