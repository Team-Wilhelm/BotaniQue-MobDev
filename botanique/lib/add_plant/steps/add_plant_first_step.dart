import 'package:flutter/material.dart';

import '../../shared/app_text.dart';
import '../../shared/app_text_field.dart';
import '../../style/app_style.dart';

class AddPlantFirstStepContent extends StatelessWidget {
  const AddPlantFirstStepContent({
    super.key,
    required this.plantNameController,
  });
  final TextEditingController plantNameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const AppText(
          text: "What do you call your green friend?",
        ),
        _getSpacer(),
        AppTextField(
          textFieldController: plantNameController,
          placeholder: "Plant Name",
        ),
        _getSpacer(),
        AppText(text: collectionQuestion),
        const AppText(
          text: "This field is optional",
          fontSize: FontSizes.tiny,
        ),
        _getSpacer(),
        DropdownButton(
          items: const [
            DropdownMenuItem(
              value: "Collection 1",
              child: Text("Collection 1"),
            ),
            DropdownMenuItem(
              value: "Collection 2",
              child: Text("Collection 2"),
            ),
          ],
          onChanged: (value) {},
        )
      ],
    );
  }

  String get collectionQuestion {
    final plantName = plantNameController.text == ""
        ? "your plant"
        : plantNameController.text;
    return "Does $plantName belong to any collections?";
  }

  Widget _getSpacer() {
    return const SizedBox(height: 8);
  }
}
