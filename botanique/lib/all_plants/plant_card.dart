import 'package:botanique/all_plants/plant_card_stat.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/style/asset_constants.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, "/plant-detail");
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(12),
          /*boxShadow: [
            BoxShadow(
              color: TextColors.textSecondary.withOpacity(0.2),
              blurRadius: 3,
              offset: const Offset(3, 3),
            ),
          ],
          */
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AppText(
                    text: "Plant Name",
                    fontSize: TextSizes.h4,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PlantCardStat(
                            statValue: "67%",
                            statImage: AssetConstants.humidity),
                        _getSpacer(),
                        PlantCardStat(
                            statValue: "20%", statImage: AssetConstants.light),
                        _getSpacer(),
                        PlantCardStat(
                            statValue: "89%",
                            statImage: AssetConstants.soilMoisture),
                      ]),
                ],
              ),
              getPlantImage(context),
            ],
          ),
        ),
      ),
    );
  }

  Container getPlantImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.logo),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _getSpacer() {
    return const SizedBox(
      width: 8,
    );
  }
}
