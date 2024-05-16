import 'package:botanique/models/models/conditions.dart';
import 'package:flutter/material.dart';

import '../models/enums/app_enums.dart';
import '../shared/app_text.dart';
import '../util/asset_constants.dart';

class PlantConditionsContainer extends StatelessWidget {
  PlantConditionsContainer({
    super.key,
    required this.conditionsLog,
  });

  final ConditionsLog? conditionsLog;
  final List<PlantDetailStat> stats = [
    PlantDetailStat.soilMoisture,
    PlantDetailStat.temperature,
    PlantDetailStat.light,
    PlantDetailStat.humidity
  ];

  @override
  Widget build(BuildContext context) {
    if (conditionsLog == null) {
      return const AppText(
        text: "This plant does not have any data yet. \nCheck back later.",
        textAlign: TextAlign.center,
      );
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Row(
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
      ),
    );
  }

  List<String> _getTitleAndIcon(PlantDetailStat stat) {
    switch (stat) {
      case PlantDetailStat.soilMoisture:
        return [stat.value, AssetConstants.soilMoisture];
      case PlantDetailStat.temperature:
        return [stat.value, AssetConstants.temperature];
      case PlantDetailStat.light:
        return [stat.value, AssetConstants.light];
      case PlantDetailStat.humidity:
        return [stat.value, AssetConstants.humidity];
      default:
        return ["", ""];
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
        return _formatStatValue(conditionsLog!.soilMoisture);
      case PlantDetailStat.temperature:
        return _formatStatValue(conditionsLog!.temperature);
      case PlantDetailStat.light:
        return _formatStatValue(conditionsLog!.light);
      case PlantDetailStat.humidity:
        return _formatStatValue(conditionsLog!.humidity);
      case PlantDetailStat.mood:
        return conditionsLog!.mood.toString();
    }
  }

  String _formatStatValue(double statValue) {
    return "${statValue.toStringAsFixed(2)}%"; // TODO: format based on stat when we change temperature to celsius
  }
}
