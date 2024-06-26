import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/models/plant.dart';
import '../../shared/top_bar.dart';
import '../../state/add_plant/add_plant_cubit.dart';
import '../../state/add_plant/plant_requirements_cubit.dart';
import '../../state/navigation_cubit.dart';
import '../../util/navigation_constants.dart';

class PlantDetailTopBar extends StatelessWidget {
  const PlantDetailTopBar({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return TopBar(
      title: plant.nickname,
      actions: [
        TopBarAction(
          text: "Edit",
          icon: Icons.edit,
          onPressed: () {
            context.read<AddPlantCubit>().setPlantToEdit(plant);
            context
                .read<PlantRequirementsCubit>()
                .setRequirementsToEdit(plant.requirements);
            context
                .read<NavigationCubit>()
                .changePage(NavigationConstants.addPlant);
            Navigator.of(context).pop();
          },
        ),
        TopBarAction(
          text: "Delete",
          icon: Icons.delete,
          onPressed: () {
            context
                .read<AddPlantCubit>()
                .deletePlant(context.read<WebSocketBloc>(), plant);
          },
        ),
      ],
    );
  }
}
