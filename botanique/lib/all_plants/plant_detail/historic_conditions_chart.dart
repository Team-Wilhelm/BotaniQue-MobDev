import 'package:botanique/models/enums/app_enums.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../models/events/client_events.dart';
import '../../models/events/server_events.dart';
import '../../models/models/conditions.dart';
import '../../models/models/uuid.dart';
import '../plant_card_stat.dart';

class HistoricConditionsChart extends StatefulWidget {
  const HistoricConditionsChart({
    super.key,
    required this.plantId,
  });

  final Uuid plantId;

  @override
  State<HistoricConditionsChart> createState() =>
      _HistoricConditionsChartState();
}

class _HistoricConditionsChartState extends State<HistoricConditionsChart> {
  PlantDetailStat _selectedStat = PlantDetailStat.mood;
  int _selectedRange = 7;
  List<ConditionsLog> conditionsLogs = [];

  @override
  void initState() {
    super.initState();
    _requestHistoricConditionsLogs();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebSocketBloc, ServerEvent>(
      listener: (context, state) {
        if (state is ServerSendsHistoricConditionLogsForPlant) {
          setState(() {
            conditionsLogs = state.conditionsLogs;
          });
        }
      },
      child: _buildContent(),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            child: PlantCardStat(
              statImage: item.icon,
              color: _selectedStat == item
                  ? TextColors.textLight
                  : TextColors.textDark,
            ),
          ),
        )
    };
  }

  Map<int, Widget> _rangesAsWidgetMap() {
    return {
      for (var item in [7, 14, 30, 365])
        item: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: AppText(
            text: "$item days",
            fontSize: FontSizes.small,
            colour: _selectedRange == item
                ? TextColors.textLight
                : TextColors.textDark,
          ),
        )
    };
  }

  void _requestHistoricConditionsLogs() {
    context.read<WebSocketBloc>().add(
          ClientWantsHistoricConditionLogsForPlant(
            plantId: widget.plantId,
            jwt: "jwt",
            startDate: DateTime.now().subtract(Duration(days: _selectedRange)),
            endDate: DateTime.now(),
          ),
        );
  }

  Widget _buildContent() {
    if (conditionsLogs.isEmpty) {
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
          CupertinoSlidingSegmentedControl<PlantDetailStat>(
            thumbColor: AppColors.primary[20]!,
            children: _plantStatsAsWidgetMap(),
            groupValue: _selectedStat,
            onValueChanged: (value) {
              setState(() {
                _selectedStat = value!;
              });
            },
          ),
          const SizedBox(height: 12),
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
                dataSource: conditionsLogs,
                xValueMapper: (ConditionsLog conditions, _) =>
                    conditions.timeStamp,
                yValueMapper: (ConditionsLog conditions, _) =>
                    conditions.getStatValue(_selectedStat),
                name: _selectedStat.value,
                color: AppColors.secondary,
              ),
            ],
          ),
          const SizedBox(height: 8),
          CupertinoSlidingSegmentedControl<int>(
            thumbColor: AppColors.primary[20]!,
            children: _rangesAsWidgetMap(),
            groupValue: _selectedRange,
            onValueChanged: (value) {
              setState(() {
                _selectedRange = value!;
                _requestHistoricConditionsLogs();
              });
            },
          ),
        ],
      ),
    );
  }
}
