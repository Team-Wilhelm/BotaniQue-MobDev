import 'package:botanique/shared/app_image_preview.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/stepper/app_stepper.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/style/asset_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/camera_access_bloc.dart';

class AddPlantScreen extends StatefulWidget {
  const AddPlantScreen({super.key});

  @override
  State<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends State<AddPlantScreen> {
  late List<AppStep> steps;
  final TextEditingController _plantNameController = TextEditingController();

  @override
  void initState() {
    steps = [
      AppStep(
        title: "Let's start simple!",
        content: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const AppText(
              text: "What do you call your green friend?",
            ),
            _getSpacer(),
            AppTextField(
              textFieldController: _plantNameController,
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
        ),
      ),
      AppStep(
        title: "Time to put a face to that name!",
        content: Column(
          children: [
            const AppText(text: "Add a photo of your plant"),
            const AppText(
              text: "This step is optional",
              fontSize: FontSizes.tiny,
            ),
            _getSpacer(),
            AppImagePreview(
              imageUrl: NetworkConstants.plantPlaceholder,
              hasCameraOverlay: true,
              onTap: () {
                context.read<CameraAccessBloc>().add(CameraAccessRequested());
              },
            ),
          ],
        ),
      ),
      AppStep(
        title: "When does your plant feels its best?",
        content: Column(),
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(children: [
        AppStepper(
          steps: steps,
        ),
      ]),
    );
  }

  Widget _getSpacer() {
    return const SizedBox(height: 8);
  }

  String get collectionQuestion {
    final plantName = _plantNameController.text == ""
        ? "your plant"
        : _plantNameController.text;
    return "Does $plantName belong to any collections?";
  }
}
