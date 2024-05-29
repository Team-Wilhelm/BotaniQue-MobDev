import 'package:botanique/models/models/conditions.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/content_size_helper.dart';
import 'package:botanique/util/helpers.dart';
import 'package:flutter/material.dart';

import '../models/enums/app_enums.dart';
import '../models/models/plant.dart';
import '../shared/app_text.dart';
import 'plant_card_stat.dart';

class PlantConditionsContainer extends StatelessWidget {
  PlantConditionsContainer({
    super.key,
    required this.conditionsLog,
    required this.idealRequirements,
  });

  final ConditionsLog? conditionsLog;
  final Requirements idealRequirements;
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
      child: Column(
        children: [
          AppText(
            text:
                "Conditions from ${DateFormatter.format(conditionsLog!.timeStamp)}",
            overflow: TextOverflow.visible,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < 2; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _getStatGridTile(stats[i], context),
                    const SizedBox(height: 16),
                    _getStatGridTile(stats[i + 2], context),
                  ],
                )
            ],
          ),
        ],
      ),
    );
  }

  Widget _getStatGridTile(PlantDetailStat stat, BuildContext context) {
    final value = conditionsLog!.getStatValue(stat);
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
                text: _formatIdealRange(stat),
                fontSize: FontSizes.tiny,
              ),
              if (ContentSizeHelper.getContentWidth(context) > 375)
                AppText(
                  text: stat.value,
                  fontWeight: FontWeight.bold,
                  overflow: TextOverflow.ellipsis,
                ),
              AppText(
                text: _formatStatValue(value, stat),
                colour: _getStatColor(value, stat),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatStatValue(double statValue, PlantDetailStat stat) {
    return "${statValue.toStringAsFixed(2)}${_getUnit(stat)}";
  }

  String _formatIdealRange(PlantDetailStat stat) {
    final range = idealRequirements.getIdealRange(stat);
    final unit = _getUnit(stat);
    return "${range.$1}$unit - ${range.$2}$unit";
  }

  String _getUnit(PlantDetailStat stat) {
    if (stat == PlantDetailStat.temperature) {
      return "°C";
    }
    return "%";
  }

  Color _getStatColor(double statValue, PlantDetailStat stat) {
    final range = idealRequirements.getIdealRange(stat);
    if (statValue < range.$1 || statValue > range.$2) {
      return AppColors.error;
    } else {
      return TextColors.textDark;
    }
  }
}
