import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    this.inputFormatters = const [],
    this.validator,
  });

  final TextEditingController textFieldController;
  final String placeholder;
  final TextInputType textInputType;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final Color fillColor;
  final Color textColor;
  final List<TextInputFormatter> inputFormatters;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      validator: validator,
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
        hintStyle: TextStyle(color: textColor.withOpacity(0.5)),
        filled: true,
        fillColor: fillColor,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
    );
  }
}
