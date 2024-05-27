import 'package:botanique/add_plant/collection_dropdown.dart';
import 'package:botanique/models/models/collections.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:botanique/util/content_size_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../models/enums/app_enums.dart';
import '../../shared/app_text.dart';

class AddPlantFirstStepContent extends StatelessWidget {
  const AddPlantFirstStepContent({
    super.key,
    required this.plantNameController,
    required this.deviceIdController,
    required this.onCollectionSelected,
  });
  final TextEditingController plantNameController;
  final TextEditingController deviceIdController;
  final Function(GetCollectionDto?) onCollectionSelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: ContentSizeHelper.isLargeScreen(context)
                ? MainAxisAlignment.center
                : MainAxisAlignment.spaceAround,
            children: [
              const AppText(
                text: "What do you call your green friend?",
              ),
              AppIconButton(
                buttonType: ButtonType.transparent,
                icon: Icons.help_outline,
                onPressed: () {},
                tooltip:
                    "Don't worry if you don't have a name, if you leave it blank we'll give it a name for you!",
              ),
            ],
          ),
          AppTextField(
            textFieldController: plantNameController,
            placeholder: "Plant Name",
            inputFormatters: [
              LengthLimitingTextInputFormatter(50),
            ],
          ),
          const SizedBox(height: 24),
          AppText(
            text: collectionQuestion,
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          CollectionDropdown(
            onCollectionSelected: onCollectionSelected,
          ),
          const SizedBox(height: 24),
          const AppText(
            text: "Fill in the device ID of your plant sensor",
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          AppTextField(
            textFieldController: deviceIdController,
            placeholder: "Device ID",
          ),
        ],
      ),
    );
  }

  String get collectionQuestion {
    final plantName = plantNameController.text == ""
        ? "your plant"
        : plantNameController.text;
    return "Does $plantName belong to any collections?";
  }
}
