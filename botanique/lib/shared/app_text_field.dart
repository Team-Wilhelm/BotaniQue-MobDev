import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  AppTextField({
    super.key,
    required this.textFieldController,
    required this.placeholder,
    this.textInputType = TextInputType.text,
  });

  final TextEditingController textFieldController;
  final String placeholder;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: placeholder,
        border: OutlineInputBorder(),
        hintText: "Enter your $placeholder",
      ),
      controller: textFieldController,
      keyboardType: textInputType,
    );
  }
}
