import 'package:botanique/all_plants/plant_card_stat.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/style/asset_constants.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              getPlantImage(context),
              const SizedBox(height: 8),
              const AppText(text: "Plant Name"),
            ],
          ),
          const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                PlantCardStat(
                    statValue: "67%", statImage: AssetConstants.humidity),
                PlantCardStat(
                    statValue: "20%", statImage: AssetConstants.light),
                PlantCardStat(
                    statValue: "89%", statImage: AssetConstants.soilMoisture),
              ]),
        ],
      ),
    );
  }

  Container getPlantImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.accent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.logo),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
