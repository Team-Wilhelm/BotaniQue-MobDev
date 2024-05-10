import 'package:botanique/all_plants/plant_conditions_container.dart';
import 'package:botanique/shared/app_image_preview.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/events/server_events.dart';
import '../../models/models/plant.dart';
import '../../shared/top_bar.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TopBar(
            title: plant.nickname,
            onBack: () {
              context
                  .read<AllPlantsCubit>()
                  .getPlantsForCurrentlySelectedCollection(
                      context.read<WebSocketBloc>());
            },
          ),
          const SizedBox(height: 16),
          Hero(
            tag: "plantCard${plant.plantId}",
            child: AppImagePreview(
              imageUrl: plant.imageUrl,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: BlocBuilder<WebSocketBloc, ServerEvent>(
              builder: (context, serverEvent) {
                if (serverEvent is ServerSendsLatestConditionsForPlant) {
                  return PlantConditionsContainer(conditionsLog: serverEvent.conditionsLog);
                } else if (serverEvent is ServerRespondsNotFound) {
                  return const AppText(
                    text:
                        "This plant does not have any data yet. \nCheck back later.",
                    textAlign: TextAlign.center,
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

enum PlantDetailStat { soilMoisture, temperature, light, humidity }
