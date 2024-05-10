import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models/plant.dart';
import '../../shared/app_text.dart';

class Question {
  final String question;
  final void Function(int, PlantRequirementsCubit) onAnswered;
  int selectedOption;

  Question({
    required this.question,
    required this.onAnswered,
    this.selectedOption = 0,
  });
}

class AddPlantThirdStepContent extends StatelessWidget {
  AddPlantThirdStepContent({super.key});

  final Map<int, String> _optionsMap = {
    0: "Low",
    1: "Medium",
    2: "High",
  };

  final List<Question> _questions = [
    Question(
      question: "How humid should the environment be?",
      onAnswered: (value, requirementsCubit) =>
          requirementsCubit.updateHumidityLevel(value),
    ),
    Question(
      question: "What about the preferred soil moisture?",
      onAnswered: (value, requirementsCubit) =>
          requirementsCubit.updateSoilMoistureLevel(value),
    ),
    Question(
      question: "How much light does it need?",
      onAnswered: (value, requirementsCubit) =>
          requirementsCubit.updateLightLevel(value),
    ),
    Question(
      question: "What's the ideal temperature?",
      onAnswered: (value, requirementsCubit) =>
          requirementsCubit.updateTemperatureLevel(value),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantRequirementsCubit, CreateRequirementsDto>(
      builder: (context, snapshot) {
        return Column(
          children: [
            for (var i = 0; i < _questions.length; i++)
              Column(
                children: [
                  AppText(text: _questions[i].question),
                  const SizedBox(height: 8),
                  CupertinoSlidingSegmentedControl(
                    thumbColor: AppColors.primary[20]!,
                    children: _optionsAsWidgetMap(_questions[i].selectedOption),
                    groupValue: _questions[i].selectedOption,
                    onValueChanged: (value) {
                      _questions[i].selectedOption = value as int;
                      _questions[i].onAnswered(
                        value,
                        context.read<PlantRequirementsCubit>(),
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                ],
              ),
          ],
        );
      },
    );
  }

  Map<int, Widget> _optionsAsWidgetMap(int selectedOption) {
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
}
