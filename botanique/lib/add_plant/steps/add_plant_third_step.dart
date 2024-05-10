import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models/plant.dart';
import '../../shared/app_text.dart';

class AddPlantThirdStepContent extends StatelessWidget {
  const AddPlantThirdStepContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantRequirementsCubit, CreateRequirementsDto>(
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
      },
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
}
