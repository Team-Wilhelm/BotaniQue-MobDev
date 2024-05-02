import 'package:botanique/shared/app_button.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class TextUpdatePanel extends StatelessWidget {
  TextUpdatePanel(
      {super.key,
      required this.textToUpdate,
      required this.placeholder,
      required this.onSubmit, 
      required this.icon});

  final _controller = TextEditingController();
  final Function onSubmit;
  final String textToUpdate;
  final String placeholder;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppText(
              text: "Current: ",
              fontSize: TextSizes.regular,
            ),
            AppText(
              text: textToUpdate,
              fontSize: TextSizes.regular,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        spacer,
        AppTextField(
          textFieldController: _controller,
          placeholder: placeholder,
          prefixIcon: icon,
        ),
        spacer,
        AppButton(onPressed: () => onSubmit, text: "Submit")
      ],
    );
  }
}
