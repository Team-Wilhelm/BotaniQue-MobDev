import 'package:botanique/all_plants/plant_detail/plant_detail_screen.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/mood_converter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../models/models/plant.dart';
import '../state/web_socket_bloc.dart';

class NeedSomeLoveRow extends StatelessWidget {
  const NeedSomeLoveRow({super.key, required this.plant});

  final GetCriticalPlantDto plant;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final plant =
            context.read<AllPlantsCubit>().state.currentPlantList!.firstWhere(
                  (element) => element.plantId == this.plant.plantId,
                );
        context.read<WebSocketBloc>().add(ClientWantsLatestConditionsForPlant(
              plantId: plant.plantId,
              jwt: "jwt",
            ));
        Navigator.of(context).push(_getPageRouteBuilder(plant));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: TextColors.textSecondary.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Hero(
                  tag: "plantCard${plant.plantId}",
                  child: Image.network(
                    plant.imageUrl,
                    fit: BoxFit.cover,
                    height: getImageSize(context),
                    width: getImageSize(context),
                  ),
                ),
                const SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: plant.nickname,
                      fontSize: FontSizes.h5,
                    ),
                    AppText(
                      text: plant.suggestedAction,
                    ),
                  ],
                ),
              ],
            ),
            AppText(
              text: MoodConverter.moodToEmoji(plant.mood),
              fontSize: FontSizes.h2,
            ),
          ],
        ),
      ),
    );
  }

  double getImageSize(BuildContext context) {
    return MediaQuery.of(context).size.width * 0.15;
  }

  PageRouteBuilder _getPageRouteBuilder(Plant plant) {
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
}
