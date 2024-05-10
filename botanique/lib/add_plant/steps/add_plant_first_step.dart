import 'package:botanique/add_plant/collection_dropdown.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:botanique/shared/buttons/button_style.dart';
import 'package:flutter/material.dart';

import '../../shared/app_text.dart';

class AddPlantFirstStepContent extends StatelessWidget {
  const AddPlantFirstStepContent({
    super.key,
    required this.plantNameController,
  });
  final TextEditingController plantNameController;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppText(
              text: "What do you call your green friend?",
            ),
            AppIconButton(
              buttonType: ButtonType.outline,
              icon: Icons.help_outline,
              onPressed: () {},
              tooltip:
                  "Don't worry if you don't have a name, if you leave it blank we'll give it a name for you!",
            ),
          ],
        ),
        AppTextField(
            textFieldController: plantNameController, placeholder: "PlantName"),
        const SizedBox(height: 24),
        AppText(text: collectionQuestion),
        const SizedBox(height: 8),
        const CollectionDropdown(),
      ],
    );
  }

  // TODO: fix this
  String get collectionQuestion {
    final plantName = plantNameController.text == ""
        ? "your plant"
        : plantNameController.text;
    return "Does $plantName belong to any collections?";
  }
}
