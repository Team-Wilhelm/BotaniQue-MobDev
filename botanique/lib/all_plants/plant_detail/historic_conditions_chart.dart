import 'package:botanique/models/enums/app_enums.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/models/conditions.dart';
import '../plant_card_stat.dart';

class HistoricConditionsChart extends StatefulWidget {
  const HistoricConditionsChart({
    super.key,
    this.conditionsLogs,
  });

  final List<ConditionsLog>? conditionsLogs;

  @override
  State<HistoricConditionsChart> createState() =>
      _HistoricConditionsChartState();
}

class _HistoricConditionsChartState extends State<HistoricConditionsChart> {
  PlantDetailStat _selectedStat = PlantDetailStat.soilMoisture;

  @override
  Widget build(BuildContext context) {
    if (widget.conditionsLogs == null) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        children: [
          CupertinoSlidingSegmentedControl(
            thumbColor: AppColors.primary[20]!,
            children: _plantStatsAsWidgetMap(),
            groupValue: _selectedStat,
            onValueChanged: (value) {
              setState(() {
                _selectedStat = value!;
              });
            },
          ),
          SfCartesianChart(
            key: ValueKey(_selectedStat),
            primaryXAxis: DateTimeAxis(
              intervalType: DateTimeIntervalType.hours,
              interval: 5,
              dateFormat: DateFormat.Hm(),
            ),
            primaryYAxis: NumericAxis(
              plotOffset: 20,
              minimum: 0,
              maximum: maximum,
              interval: interval,
            ),
            series: <CartesianSeries>[
              SplineSeries<ConditionsLog, DateTime>(
                splineType: SplineType.monotonic,
                dataSource: widget.conditionsLogs!,
                xValueMapper: (ConditionsLog conditions, _) =>
                    conditions.timeStamp,
                yValueMapper: (ConditionsLog conditions, _) =>
                    conditions.getStatValue(_selectedStat),
                name: _selectedStat.value,
                color: AppColors.secondary,
              ),
            ],
          ),
        ],
      ),
    );
  }

  double get maximum {
    if (_selectedStat == PlantDetailStat.mood) {
      return 4;
    } else if (_selectedStat == PlantDetailStat.temperature) {
      return 40;
    } else {
      return 100;
    }
  }

  double get interval {
    if (_selectedStat == PlantDetailStat.mood) {
      return 1;
    } else if (_selectedStat == PlantDetailStat.temperature) {
      return 5;
    } else {
      return 20;
    }
  }

  Map<PlantDetailStat, Widget> _plantStatsAsWidgetMap() {
    return {
      for (var item in PlantDetailStat.values)
        item: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: PlantCardStat(
            statImage: item.icon,
          ),
        )
    };
  }
}
