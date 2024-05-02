import 'package:botanique/add_plant/steps/add_plant_first_step.dart';
import 'package:botanique/add_plant/steps/add_plant_second_step.dart';
import 'package:botanique/add_plant/steps/add_plant_third_step.dart';
import 'package:botanique/models/dtos/create_plant_dto.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/stepper/app_stepper.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/xfile_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../state/add_plant/add_plant_bloc.dart';
import '../state/add_plant/plant_requirements_cubit.dart';
import '../util/navigation_constants.dart';

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
        content:
            AddPlantFirstStepContent(plantNameController: _plantNameController),
      ),
      const AppStep(
        title: "Time to put a face to that name!",
        content: AddPlantSecondStepContent(),
      ),
      const AppStep(
        title: "When does your plant feel best?",
        content: AddPlantThirdStepContent(),
      ),
    ];
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
          if (state.newlyAddedPlant != null) {
            // TODO: better user feedback on success and error
            context
                .read<NavigationCubit>()
                .changePage(NavigationConstants.home);
            context.read<WebSocketBloc>().add(ResetState());
            context.read<PlantRequirementsCubit>().reset();
            context.read<AddPlantBloc>().add(ResetAddPlantState());
          } else if (state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error!),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: BlocBuilder<AddPlantBloc, AddPlantState>(
          builder: (context, appState) {
            if (appState is PlantAddInProgress) {
              return const Center(child: CircularProgressIndicator());
            }
            return AppStepper(
              onFinishPressed: () => finishPressed(context: context),
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

  void finishPressed({required BuildContext context}) {
    final requirements = context.read<PlantRequirementsCubit>().state;

    String? base64Image;
    final AddPlantState addPlantState = context.read<AddPlantBloc>().state;
    if (addPlantState is PictureReady) {
      base64Image = XFileConverter.toBase64(
          (context.read<AddPlantBloc>().state as PictureReady).image);
    }

    context.read<WebSocketBloc>().add(ClientWantsToCreatePlant(
          createPlantDto: CreatePlantDto(
            userEmail: "bob@app.com",
            collectionId: null,
            deviceId: "264625477326660",
            nickname: _plantNameController.text,
            base64Image: base64Image,
            createRequirementsDto: requirements,
          ),
          jwt: "jwt",
          eventType: "ClientWantsToCreatePlant",
        ));

    context.read<AddPlantBloc>().add(FinishPressed());
  }
}
