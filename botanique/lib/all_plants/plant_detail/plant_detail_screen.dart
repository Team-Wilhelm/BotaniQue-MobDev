import 'package:botanique/shared/app_image_preview.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/asset_constants.dart';
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
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getStatGridTile(
                              PlantDetailStat.soilMoisture, serverEvent),
                          const SizedBox(height: 16),
                          getStatGridTile(PlantDetailStat.light, serverEvent),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getStatGridTile(
                              PlantDetailStat.temperature, serverEvent),
                          const SizedBox(height: 16),
                          getStatGridTile(
                              PlantDetailStat.humidity, serverEvent),
                        ],
                      )
                    ],
                  );
                } else if (serverEvent is ServerRespondsNotFound) {
                  return const AppText(
                    text: "This plant does not have any data yet. Check back later."
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

  Widget getStatGridTile(
      PlantDetailStat stat, ServerSendsLatestConditionsForPlant event) {
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
              AppText(
                text: event.conditionsLog.soilMoisture.toString(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum PlantDetailStat { soilMoisture, temperature, light, humidity }
