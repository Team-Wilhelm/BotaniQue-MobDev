import 'package:botanique/all_plants/plant_conditions_container.dart';
import 'package:botanique/all_plants/plant_detail/plant_detail_top_bar.dart';
import 'package:botanique/models/models/conditions.dart';
import 'package:botanique/shared/app_image_preview.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/events/server_events.dart';
import '../../models/models/plant.dart';
import 'historic_conditions_graph.dart';

class PlantDetailScreen extends StatefulWidget {
  const PlantDetailScreen({
    super.key,
    required this.plant,
  });

  final Plant plant;

  @override
  State<PlantDetailScreen> createState() => _PlantDetailScreenState();
}

class _PlantDetailScreenState extends State<PlantDetailScreen> {
  ConditionsLog? latestConditions;
  List<ConditionsLog>? historicConditions;

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: SingleChildScrollView(
          child: BlocConsumer<WebSocketBloc, ServerEvent>(
            listener: (context, serverEvent) {
              if (serverEvent is ServerSendsLatestConditionsForPlant) {
                latestConditions = serverEvent.conditionsLog;
              } else if (serverEvent
                  is ServerSendsHistoricConditionLogsForPlant) {
                historicConditions = serverEvent.conditionsLogs;
              }
            },
            builder: (context, serverEvent) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PlantDetailTopBar(plant: plant),
                  const SizedBox(height: 16),
                  Hero(
                    tag: "plantCard${plant.plantId}",
                    child: AppImagePreview(
                      imageUrl: plant.imageUrl,
                    ),
                  ),
                  const SizedBox(height: 16),
                  PlantConditionsContainer(
                    conditionsLog: latestConditions,
                  ),
                  const SizedBox(height: 16),
                  HistoricConditionsGraph(
                    conditionsLogs: historicConditions,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Plant get plant => widget.plant;
}

enum PlantDetailStat { soilMoisture, temperature, light, humidity }
