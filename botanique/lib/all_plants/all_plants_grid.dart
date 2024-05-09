import 'package:flutter/material.dart';

import '../models/models/plant.dart';
import 'plant_card.dart';

class AllPlantsGrid extends StatelessWidget {
  const AllPlantsGrid({super.key, required this.plants});

  final List<Plant> plants;

  @override
  Widget build(BuildContext context) {
    return SliverAnimatedGrid(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (context, index, animation) => FadeTransition(
        opacity: animation,
        child: PlantCard(plant: plants[index]),
      ),
      initialItemCount: plants.length,
    );
  }
}
