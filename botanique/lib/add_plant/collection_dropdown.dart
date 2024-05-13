import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:botanique/state/add_plant/add_plant_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/models/collections.dart';
import '../state/all_plants_cubit.dart';

class CollectionDropdown extends StatelessWidget {
  const CollectionDropdown({
    super.key,
    required this.onCollectionSelected,
  });

  final Function(GetCollectionDto?) onCollectionSelected;

  @override
  Widget build(BuildContext context) {
    final collections = context
        .read<AllPlantsCubit>()
        .state
        .collections
        .where((collection) => collection.collectionId != allPlantsCollectionId)
        .toList();
    if (collections.isNotEmpty) {
      return BlocBuilder<AddPlantCubit, AddPlantState>(
          builder: (context, addPlantState) {
        final preselectedCollection = addPlantState is PlantToEditSelected
            ? collections.firstWhere(
                (collection) =>
                    collection.collectionId == addPlantState.plant.collectionId,
              )
            : null;
        return CustomDropdown<GetCollectionDto>.search(
          decoration: _decoration,
          hintText: "Select a collection (optional)",
          items: collections,
          initialItem: preselectedCollection,
          onChanged: (value) {
            onCollectionSelected(value);
          },
        );
      });
    } else {
      return IgnorePointer(
        child: CustomDropdown(
          decoration: _decoration,
          hintText: "You don't have any collections yet",
          items: const ["You don't have any collections"],
          onChanged: (value) {},
        ),
      );
    }
  }

  CustomDropdownDecoration get _decoration => const CustomDropdownDecoration(
      closedFillColor: AppColors.inputFill,
      searchFieldDecoration: SearchFieldDecoration(
        fillColor: AppColors.inputFill,
      ));
}
