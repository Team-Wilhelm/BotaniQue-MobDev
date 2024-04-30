import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/stepper/app_stepper.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_image_preview.dart';
import '../state/add_plant/camera_access_bloc.dart';
import '../state/add_plant/plant_requirements_cubit.dart';
import '../style/asset_constants.dart';

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
    steps = [_buildFirstStep(), _buildSecondStep(), _buildThirdStep()];
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

  AppStep _buildFirstStep() {
    return AppStep(
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
    );
  }

  AppStep _buildSecondStep() {
    return AppStep(
      title: "Time to put a face to that name!",
      content: BlocBuilder<CameraAccessBloc, CameraState>(
        builder: (context, snapshot) {
          if (snapshot is PictureSelected) {
            return Column(
              children: [
                const AppText(text: "Here's your plant!"),
                _getSpacer(),
                AppImagePreview(
                  imageUrl: snapshot.image.path,
                  hasCameraOverlay: false,
                  imageType: ImageType.file,
                  onTap: () {
                    showChoiceDialog(context: context);
                  },
                ),
                _getSpacer(),
                const AppText(
                  text: "Wanna try again? Click on the image!",
                  fontSize: FontSizes.tiny,
                ),
              ],
            );
          } else {
            return Column(
              children: [
                AppText(text: _getNoPictureTitle(snapshot)),
                AppText(
                  text: _getNoPictureSubtitle(snapshot),
                  fontSize: FontSizes.tiny,
                ),
                _getSpacer(),
                AppImagePreview(
                  imageUrl: NetworkConstants.plantPlaceholder,
                  hasCameraOverlay: snapshot is InitialNoPictureSelected,
                  onTap: () {
                    showChoiceDialog(context: context);
                  },
                ),
                if (snapshot is NoPictureSelected) ...[
                  _getSpacer(),
                  const AppText(
                    text: "Wanna try again? Click on the image!",
                    fontSize: FontSizes.tiny,
                  ),
                ],
              ],
            );
          }
        },
      ),
    );
  }

  AppStep _buildThirdStep() {
    return AppStep(
      title: "When does your plant feels its best?",
      content: BlocBuilder<PlantRequirementsCubit, PlantRequirementsState>(
          builder: (context, snapshot) {
        final PlantRequirementsCubit requirementsCubit =
            context.read<PlantRequirementsCubit>();
        return Column(
          children: [
            const AppText(text: "How humid should the environment be?"),
            Slider.adaptive(
              value: snapshot.humidityLevel.toDouble(),
              min: 0,
              max: 2,
              divisions: 2,
              label: _getSliderLabel(snapshot.humidityLevel),
              onChanged: (value) {
                requirementsCubit.updateHumidityLevel(value.toInt());
              },
            ),
            const AppText(text: "What about the preferred soil moisture?"),
            Slider.adaptive(
              value: snapshot.soilMoistureLevel.toDouble(),
              min: 0,
              max: 2,
              divisions: 2,
              label: _getSliderLabel(snapshot.soilMoistureLevel),
              onChanged: (value) {
                requirementsCubit.updateSoilMoistureLevel(value.toInt());
              },
            ),
            const AppText(text: "How much light does it need?"),
            Slider.adaptive(
              value: snapshot.lightLevel.toDouble(),
              min: 0,
              max: 2,
              divisions: 2,
              label: _getSliderLabel(snapshot.lightLevel),
              onChanged: (value) {
                requirementsCubit.updateLightLevel(value.toInt());
              },
            ),
            const AppText(text: "What's the ideal temperature?"),
            Slider.adaptive(
              value: snapshot.temperatureLevel.toDouble(),
              min: 0,
              max: 40,
              divisions: 40,
              label: "${snapshot.temperatureLevel}°C",
              onChanged: (value) {
                requirementsCubit.updateTemperatureLevel(value.toInt());
              },
            ),
          ],
        );
      }),
    );
  }

  String _getSliderLabel(int value) {
    switch (value) {
      case 0:
        return "Low";
      case 1:
        return "Medium";
      case 2:
        return "High";
      default:
        return "Low";
    }
  }

  String _getNoPictureTitle(CameraState snapshot) {
    if (snapshot is InitialNoPictureSelected) {
      return "Add a photo of your plant";
    } else {
      return "We couldn't get a photo of your plant😿";
    }
  }

  String _getNoPictureSubtitle(CameraState snapshot) {
    if (snapshot is InitialNoPictureSelected) {
      return "This step is optional";
    } else {
      return "That's okay though, we can use this one instead!";
    }
  }

  Future<void> showChoiceDialog({required BuildContext context}) async {
    return showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog.adaptive(
          title: const Text("How would you like to add a photo of your plant?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                context
                    .read<CameraAccessBloc>()
                    .add(GetImageFromCameraRequested());
              },
              child: const Text("Take a photo"),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
                context
                    .read<CameraAccessBloc>()
                    .add(GetImageFromGalleryRequested());
              },
              child: const Text("Select from gallery"),
            ),
          ],
        );
      },
    );
  }
}
