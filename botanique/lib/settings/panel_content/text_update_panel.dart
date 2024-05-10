import 'package:botanique/shared/app_button.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextUpdatePanel extends StatelessWidget {
  TextUpdatePanel(
      {super.key,
      required this.placeholder,
      required this.onSubmit,
      required this.controller,
      required this.icon});

  final String placeholder;
  final VoidCallback onSubmit;
  final TextEditingController controller;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextField(
          textFieldController: controller,
          placeholder: placeholder,
          prefixIcon: icon,
        ),
        spacer,
        AppButton(onPressed: onSubmit, text: "Submit")
      ],
    );
  }
}
