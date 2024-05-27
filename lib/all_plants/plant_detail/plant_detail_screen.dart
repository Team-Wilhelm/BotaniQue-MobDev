import 'package:botanique/all_plants/plant_conditions_container.dart';
import 'package:botanique/all_plants/plant_detail/plant_detail_top_bar.dart';
import 'package:botanique/models/models/conditions.dart';
import 'package:botanique/shared/app_image_preview.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/events/server_events.dart';
import '../../models/models/collections.dart';
import '../../models/models/plant.dart';
import '../../state/all_plants_cubit.dart';
import 'historic_conditions_chart.dart';

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
              } else if (serverEvent is ServerConfirmsDelete) {
                context.read<AllPlantsCubit>()
                  ..selectCollection(GetCollectionDto.allPlants(),
                      context.read<WebSocketBloc>())
                  ..refreshData(context.read<WebSocketBloc>());
                Navigator.of(context).pop();
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
                    idealRequirements: plant.requirements,
                  ),
                  const SizedBox(height: 16),
                  HistoricConditionsChart(
                    plantId: plant.plantId,
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
