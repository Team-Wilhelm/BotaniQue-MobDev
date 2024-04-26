import 'package:botanique/all_plants/plant_detail/detail_top_bar.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/asset_constants.dart';
import 'package:flutter/material.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const PlantDetailTopBar(),
          const SizedBox(height: 20),
          Image.network(NetworkConstants.plantPlaceholder),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getStatGridTile(PlantDetailStat.soilMoisture),
                    getStatGridTile(PlantDetailStat.light),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getStatGridTile(PlantDetailStat.temperature),
                    getStatGridTile(PlantDetailStat.humidity),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<String> getTitleAndIcon(PlantDetailStat stat) {
    switch (stat) {
      case PlantDetailStat.soilMoisture:
        return ["Soil Moisture", AssetConstants.soilMoisture];
      case PlantDetailStat.temperature:
        return ["Temperature", AssetConstants.temperature];
      case PlantDetailStat.light:
        return ["Light Exposure", AssetConstants.light];
      case PlantDetailStat.humidity:
        return ["Humidity", AssetConstants.humidity];
    }
  }

  Widget getStatGridTile(PlantDetailStat stat) {
    final titleAndIcon = getTitleAndIcon(stat);
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Image.asset(
            titleAndIcon[1],
            width: 25,
            height: 25,
          ),
          const SizedBox(width: 4),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: titleAndIcon[0],
                fontWeight: FontWeight.bold,
              ),
              const AppText(
                text: "10%",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum PlantDetailStat { soilMoisture, temperature, light, humidity }
