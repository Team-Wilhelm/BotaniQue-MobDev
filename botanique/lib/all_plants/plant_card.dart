import 'package:botanique/models/models/plant.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/asset_constants.dart';
import 'package:botanique/util/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../style/app_style.dart';
import 'plant_detail/plant_detail_screen.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({super.key, required this.plant});

  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<WebSocketBloc>().add(ClientWantsLatestConditionsForPlant(
              plantId: plant.plantId,
              jwt: "jwt",
            ));
        Navigator.push(context, _getPageRouteBuilder());
      },
      child: Hero(
        tag: "plantCard${plant.plantId}",
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: TextColors.textSecondary.withOpacity(0.2),
                blurRadius: 5,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                getPlantImage(context),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.045,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: AppText(
                          text: plant.nickname,
                        ),
                      ),
                      _getMoodEmoji(),
                    ],
                  ),
                ),

                /*Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  PlantCardStat(
                      statValue: "67%", statImage: AssetConstants.humidity),
                  _getSpacer(),
                  PlantCardStat(
                      statValue: "20%", statImage: AssetConstants.light),
                  _getSpacer(),
                  PlantCardStat(
                      statValue: "89%", statImage: AssetConstants.soilMoisture),
                ]),*/
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getPlantImage(BuildContext context) {
    return Expanded(
      child: plant.imageUrl != ""
          ? Image.network(plant.imageUrl)
          : Image.asset(AssetConstants.logo, fit: BoxFit.cover),
    );
  }

  PageRouteBuilder _getPageRouteBuilder() {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      pageBuilder: (context, animation, secondaryAnimation) =>
          PlantDetailScreen(plant: plant),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = const Offset(1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: child,
          ),
        );
      },
    );
  }

  Widget _getMoodEmoji() {
    final mood =
        plant.conditionsLogs.isEmpty ? -1 : plant.conditionsLogs.first.mood;
    return AppText(text: MoodConverter.moodToEmoji(mood));
  }
}
