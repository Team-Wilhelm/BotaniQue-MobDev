import 'package:botanique/state/all_plants_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'plant_card.dart';

class AllPlantsGrid extends StatelessWidget {
  const AllPlantsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPlantsCubit, AllPlantsState>(
      builder: (context, collectionsState) {
        return SliverGrid.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            maxCrossAxisExtent: 200,
          ),
          itemBuilder: (context, index) {
            if (collectionsState.currentPlantList == null) {
              return const SizedBox();
            }
            if (index < collectionsState.currentPlantList!.length) {
              return PlantCard(
                  plant: collectionsState.currentPlantList![index]);
            }
            return const SizedBox();
          },
          itemCount: collectionsState.currentPlantList!.length,
        );
      },
    );
  }
}
