import 'package:botanique/add_plant/steps/add_plant_first_step.dart';
import 'package:botanique/add_plant/steps/add_plant_seceond_step.dart';
import 'package:botanique/add_plant/steps/add_plant_third_step.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/stepper/app_stepper.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/add_plant/add_plant_bloc.dart';
import '../state/add_plant/plant_requirements_cubit.dart';

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
  void dispose() {
    _plantNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: BlocListener<WebSocketBloc, AppState>(
        listener: (context, state) {
          // if server approves create request let add plant bloc know
          // and navigate to home screen
        },
        child: BlocBuilder<AddPlantBloc, AddPlantState>(
          builder: (context, appState) {
            if (appState is PlantAddInProgress) {
              return const Center(child: CircularProgressIndicator());
            }
            return AppStepper(
              onFinish: () => finishPressed(context: context),
              steps: steps,
            );
          },
        ),
      ),
    );
  }

  Widget getSpacer() {
    return const SizedBox(height: 8);
  }

  AppStep _buildFirstStep() {
    return AppStep(
      title: "Let's start simple!",
      content:
          AddPlantFirstStepContent(plantNameController: _plantNameController),
    );
  }

  AppStep _buildSecondStep() {
    return const AppStep(
      title: "Time to put a face to that name!",
      content: AddPlantSecondStepContent(),
    );
  }

  AppStep _buildThirdStep() {
    return const AppStep(
      title: "When does your plant feel best?",
      content: AddPlantThirdStepContent(),
    );
  }

  void finishPressed({required BuildContext context}) {
    final requirements = context.read<PlantRequirementsCubit>().state;
    context.read<AddPlantBloc>().add(FinishPressed(requirements: requirements));
  }
}
