import 'package:botanique/models/models/conditions.dart';
import 'package:flutter/material.dart';

import '../models/enums/app_enums.dart';
import '../shared/app_text.dart';
import 'plant_card_stat.dart';

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

  Widget _getStatGridTile(PlantDetailStat stat) {
    return Container(
      padding: const EdgeInsets.all(4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          PlantCardStat(statImage: stat.icon),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: stat.value,
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: _formatStatValue(conditionsLog!.getStatValue(stat)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatStatValue(double statValue) {
    return "${statValue.toStringAsFixed(2)}%"; // TODO: format based on stat when we change temperature to celsius
  }
}
