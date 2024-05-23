import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:flutter/material.dart';

class CollectionInputCard extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final VoidCallback onSubmit;

  const CollectionInputCard({
    super.key,
    required this.controller,
    required this.placeholder,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: AppTextField(
                textFieldController: controller,
                placeholder: placeholder,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: AppIconButton(
                onPressed: onSubmit,
                icon: Icons.check,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
