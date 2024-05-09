import 'package:botanique/state/collections_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'plant_card.dart';

class AllPlantsGrid extends StatelessWidget {
  const AllPlantsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionsCubit, CollectionsState>(
        builder: (context, collectionsState) {
      return SliverAnimatedGrid(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (context, index, animation) {
          if (index < collectionsState.currentPlantList.length) {
            return FadeTransition(
              opacity: animation,
              child: PlantCard(plant: collectionsState.currentPlantList[index]),
            );
          }
          return const SizedBox();
        },
        initialItemCount: collectionsState.currentPlantList.length,
      );
    });
  }
}
