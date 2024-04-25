import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textFieldController,
    required this.placeholder,
    this.textInputType = TextInputType.text,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor = TextColors.textSecondary,
  });

  final TextEditingController textFieldController;
  final String placeholder;
  final TextInputType textInputType;
  final Icon? prefixIcon;
  final Icon? suffixIcon;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        prefixIcon: prefixIcon,
        prefixIconColor: fillColor,
        suffixIcon: suffixIcon,
        suffixIconColor: fillColor,
        hintText: placeholder,
        hintStyle: TextStyle(color: fillColor),
        filled: true,
        fillColor: fillColor.withOpacity(0.2),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
      controller: textFieldController,
      keyboardType: textInputType,
    );
  }
}
