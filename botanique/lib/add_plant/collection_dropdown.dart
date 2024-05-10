import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/models/collections.dart';
import '../state/all_plants_cubit.dart';

// The collections are not displayed correctly when calling toString on the collection object.
class CollectionWrapper {
  final GetCollectionDto collection;

  CollectionWrapper(this.collection);

  @override
  String toString() {
    return collection.name;
  }
}

class CollectionDropdown extends StatelessWidget {
  const CollectionDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    final collections = context
        .read<AllPlantsCubit>()
        .state
        .collections
        .where((collection) => collection.collectionId != allPlantsCollectionId)
        .toList();
    if (collections.isNotEmpty) {
      return CustomDropdown<CollectionWrapper>.search(
        decoration: _decoration,
        hintText: "Select a collection (optional)",
        items: collections
            .map((collection) => CollectionWrapper(collection))
            .toList(),
        onChanged: (value) {},
      );
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
