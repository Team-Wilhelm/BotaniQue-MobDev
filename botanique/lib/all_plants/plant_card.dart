import 'package:botanique/all_plants/plant_detail/plant_detail_screen.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const PlantDetailScreen();
        }));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              getPlantImage(context),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.045,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText(
                      text: plant.nickname,
                    ),
                    const AppText(text: "🥹")
                  ],
                ),
              ),

              /*Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                PlantCardStat(
                    statValue: "67%", statImage: AssetConstants.humidity),
                _getSpacer(),
                PlantCardStat(
                    statValue: "20%", statImage: AssetConstants.light),
                _getSpacer(),
                PlantCardStat(
                    statValue: "89%", statImage: AssetConstants.soilMoisture),
              ]),*/
            ],
          ),
        ),
      ),
    );
  }

  Widget getPlantImage(BuildContext context) {
    /*return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 0.13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: AssetImage(AssetConstants.logo),
          fit: BoxFit.cover,
        ),
      ),
    );
    */
    return Expanded(
      child: plant.imageUrl != ""
          ? Image.network(plant.imageUrl)
          : Image.asset(AssetConstants.logo, fit: BoxFit.cover),
    );
  }

  Widget _getSpacer() {
    return const SizedBox(
      width: 8,
    );
  }
}
