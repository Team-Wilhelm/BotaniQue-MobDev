import 'package:botanique/add_plant/steps/add_plant_first_step.dart';
import 'package:botanique/add_plant/steps/add_plant_second_step.dart';
import 'package:botanique/add_plant/steps/add_plant_third_step.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/stepper/app_stepper.dart';
import 'package:botanique/shared/success_screen.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/xfile_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/models/plant.dart';
import '../models/models/uuid.dart';
import '../state/add_plant/add_plant_cubit.dart';
import '../state/add_plant/plant_requirements_cubit.dart';
import '../util/navigation_constants.dart';

class AddPlantScreen extends StatefulWidget {
  const AddPlantScreen({
    super.key,
  });

  @override
  State<AddPlantScreen> createState() => _AddPlantScreenState();
}

class _AddPlantScreenState extends State<AddPlantScreen> {
  late List<AppStep> steps;
  final TextEditingController _plantNameController = TextEditingController();
  final TextEditingController _deviceIdController = TextEditingController();

  bool _isEditing = false;
  Uuid? _plantToEditId;
  Uuid? _collectionId;

  @override
  void initState() {
    steps = [
      AppStep(
        title: "Each plant is unique!",
        subtitle: "Let's make sure we know all about yours.",
        content: AddPlantFirstStepContent(
          plantNameController: _plantNameController,
          deviceIdController: _deviceIdController,
          onCollectionSelected: (collection) {
            _collectionId = collection?.collectionId;
          },
        ),
      ),
      const AppStep(
        title: "3, 2, 1... Smile!",
        subtitle: "Time to put a face to that name!",
        content: AddPlantSecondStepContent(),
      ),
      AppStep(
        title: "Just a few more details!",
        subtitle: "When does your plant feel best?",
        content: AddPlantThirdStepContent(),
      ),
    ];
    super.initState();
  }

  @override
  void dispose() {
    _plantNameController.dispose();
    _deviceIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: BlocListener<WebSocketBloc, ServerEvent>(
        listener: (context, state) {
          if (state is ServerSavesPlant) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SuccessScreen(
                  onAnimationFinished: () {
                    Navigator.of(context).pop();
                    context
                        .read<AllPlantsCubit>()
                        .refreshData(context.read<WebSocketBloc>());
                    context.read<PlantRequirementsCubit>().reset();
                    context.read<AddPlantCubit>().resetAddPlantState();
                  },
                ),
              ),
            );
            context
                .read<NavigationCubit>()
                .changePage(NavigationConstants.allPlants);
          }
        },
        child: BlocBuilder<AddPlantCubit, AddPlantState>(
          builder: (context, addPlantState) {
            if (addPlantState is PlantToEditSelected) {
              _plantNameController.text = addPlantState.plant.nickname;
              _deviceIdController.text = addPlantState.plant.deviceID ?? "";
              _isEditing = true;
              _plantToEditId = addPlantState.plant.plantId;
            }

            if (addPlantState is PlantAddInProgress) {
              return const Center(child: CircularProgressIndicator());
            }

            return AppStepper(
              onFinishPressed: () => savePressed(context),
              steps: steps,
            );
          },
        ),
      ),
    );
  }

  void savePressed(BuildContext context) {
    final requirements = context.read<PlantRequirementsCubit>().state;

    String? base64Image;
    final AddPlantState addPlantState = context.read<AddPlantCubit>().state;
    if (addPlantState is PictureReady) {
      base64Image = XFileConverter.toBase64(
          (context.read<AddPlantCubit>().state as PictureReady).image);
    }

    if (_isEditing) {
      final updatePlantDto = UpdatePlantDto(
        plantId: _plantToEditId!,
        collectionId: _collectionId,
        deviceId: _getNullIfTextEmpty(_deviceIdController.text),
        nickname: _plantNameController.text,
        base64Image: base64Image,
        updateRequirementsDto: requirements.toUpdateRequirementsDto(),
      );
      context.read<AddPlantCubit>().updatePlant(context.read<WebSocketBloc>(),
          updatePlantDto: updatePlantDto);
    } else {
      final createPlantDto = CreatePlantDto(
        collectionId: _collectionId,
        deviceId: _getNullIfTextEmpty(_deviceIdController.text),
        nickname: _plantNameController
            .text, // TODO: can't be empty, won't trigger nickname generation
        base64Image: base64Image,
        createRequirementsDto: requirements.toCreateRequirementsDto(),
      );
      context.read<AddPlantCubit>().addPlant(context.read<WebSocketBloc>(),
          createPlantDto: createPlantDto);
    }
  }

  String? _getNullIfTextEmpty(String value) {
    return value.isEmpty ? null : value;
  }
}
