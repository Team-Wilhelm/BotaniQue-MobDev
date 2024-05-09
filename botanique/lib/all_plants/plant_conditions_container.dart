import 'package:botanique/models/models/conditions.dart';
import 'package:flutter/material.dart';

import '../shared/app_text.dart';
import '../util/asset_constants.dart';
import 'plant_detail/plant_detail_screen.dart';

class PlantConditionsContainer extends StatelessWidget {
  PlantConditionsContainer({
    super.key,
    required this.conditionsLog,
  });

  final ConditionsLog conditionsLog;
  final List<PlantDetailStat> stats = [
    PlantDetailStat.soilMoisture,
    PlantDetailStat.temperature,
    PlantDetailStat.light,
    PlantDetailStat.humidity
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < 2; i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _getStatGridTile(stats[i]),
              const SizedBox(height: 16),
              _getStatGridTile(stats[i + 2]),
            ],
          )
      ],
    );
  }

  List<String> _getTitleAndIcon(PlantDetailStat stat) {
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

  Widget _getStatGridTile(PlantDetailStat stat) {
    final titleAndIcon = _getTitleAndIcon(stat);
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            titleAndIcon[1],
            width: 25,
            height: 25,
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: titleAndIcon[0],
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: _getStatValue(stat),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getStatValue(PlantDetailStat stat) {
    switch (stat) {
      case PlantDetailStat.soilMoisture:
        return conditionsLog.soilMoisture.toString();
      case PlantDetailStat.temperature:
        return conditionsLog.temperature.toString();
      case PlantDetailStat.light:
        return conditionsLog.light.toString();
      case PlantDetailStat.humidity:
        return conditionsLog.humidity.toString();
    }
  }
}
