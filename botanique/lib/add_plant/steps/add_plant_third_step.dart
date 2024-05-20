import 'package:botanique/models/enums/app_enums.dart';
import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../shared/app_text.dart';

class Question {
  final String question;
  final void Function(num, PlantRequirementsCubit) onAnswered;

  Question({
    required this.question,
    required this.onAnswered,
  });
}

class AddPlantThirdStepContent extends StatelessWidget {
  AddPlantThirdStepContent({
    super.key,
  });

  final Map<int, String> _optionsMap = {
    0: "Low",
    1: "Medium",
    2: "High",
  };

  final List<Question> _questions = [
    Question(
      question: "How humid should the environment be?",
      onAnswered: (value, requirementsCubit) => requirementsCubit
          .updateHumidityLevel(RequirementLevel.values[value as int]),
    ),
    Question(
      question: "What about the preferred soil moisture?",
      onAnswered: (value, requirementsCubit) => requirementsCubit
          .updateSoilMoistureLevel(RequirementLevel.values[value as int]),
    ),
    Question(
      question: "How much light does it need?",
      onAnswered: (value, requirementsCubit) => requirementsCubit
          .updateLightLevel(RequirementLevel.values[value as int]),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlantRequirementsCubit, RequirementsState>(
      listener: (context, requirementsState) {},
      builder: (context, requirementsState) {
        return Column(
          children: [
            ..._questions.map(
              (question) {
                final selectedOption =
                    _getCurrentValueForOption(context, question);
                return Column(
                  children: [
                    AppText(text: question.question),
                    const SizedBox(height: 8),
                    CupertinoSlidingSegmentedControl<num>(
                      thumbColor: AppColors.primary[20]!,
                      children: _optionsAsWidgetMap(selectedOption),
                      groupValue: selectedOption,
                      onValueChanged: (value) {
                        question.onAnswered(
                          value!,
                          context.read<PlantRequirementsCubit>(),
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                );
              },
            ),
            const AppText(text: "What's the ideal temperature?"),
            Slider(
              value:
                  context.read<PlantRequirementsCubit>().state.temperatureLevel,
              min: -20.0,
              max: 45.0,
              divisions: 130,
              label: context
                  .read<PlantRequirementsCubit>()
                  .state
                  .temperatureLevel
                  .toString(),
              onChanged: (double value) {
                context
                    .read<PlantRequirementsCubit>()
                    .updateTemperatureLevel(value);
              },
            ),
          ],
        );
      },
    );
  }

  Map<int, Widget> _optionsAsWidgetMap(num selectedOption) {
    return _optionsMap.map(
      (index, value) => MapEntry(
        index,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: AppText(
            text: value,
            colour: index == selectedOption
                ? TextColors.textLight
                : TextColors.textDark,
          ),
        ),
      ),
    );
  }

  num _getCurrentValueForOption(BuildContext context, Question question) {
    final allPLantsCubit = context.read<PlantRequirementsCubit>();
    switch (_questions.indexOf(question)) {
      case 0:
        return allPLantsCubit.state.humidityLevel.index;
      case 1:
        return allPLantsCubit.state.soilMoistureLevel.index;
      case 2:
        return allPLantsCubit.state.lightLevel.index;
      case 3:
        return allPLantsCubit.state.temperatureLevel;
      default:
        return 0;
    }
  }
}
