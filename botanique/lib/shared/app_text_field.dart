import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.textFieldController,
    required this.placeholder,
    this.textInputType = TextInputType.text,
    this.icon,
  });

  final TextEditingController textFieldController;
  final String placeholder;
  final TextInputType textInputType;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: icon,
        prefixIconColor: textSecondary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        hintText: placeholder,
        hintStyle: const TextStyle(color: textSecondary),
        filled: true,
        fillColor: textSecondary.withOpacity(0.2),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
      controller: textFieldController,
      keyboardType: textInputType,
    );
  }
}
