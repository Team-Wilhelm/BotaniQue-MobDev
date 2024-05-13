import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textFieldController,
    required this.placeholder,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor = AppColors.inputFill,
    this.textColor = TextColors.textDark,
  });

  final TextEditingController textFieldController;
  final String placeholder;
  final TextInputType textInputType;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final Color fillColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: textInputType == TextInputType.visiblePassword,
      controller: textFieldController,
      keyboardType: textInputType,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon,
        prefixIconColor: textColor,
        suffixIcon: suffixIcon,
        suffixIconColor: textColor,
        hintText: placeholder,
        hintStyle: const TextStyle(color: TextColors.textSecondary),
        filled: true,
        fillColor: fillColor,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }
}
