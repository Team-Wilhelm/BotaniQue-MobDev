import 'package:botanique/all_plants/plant_card.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: BlocBuilder<WebSocketBloc, ServerEvent>(builder: (context, state) {
        print(state);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppText(
              text: "My Plants",
              fontSize: FontSizes.h2,
              fontWeight: FontWeight.bold,
            ),
            _getSpacer(context),
            // const CategorySelection(),
            _getSpacer(context),

            Expanded(
              child: _getChildFromState(context, state),
            ),
          ],
        );
      }),
    );
  }

  Widget _getSpacer(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }

  Widget _getChildFromState(BuildContext context, ServerEvent serverEvent) {
    if (serverEvent is! ServerSendsAllPlants) {
      context.read<WebSocketBloc>().add(ClientWantsAllPlants(
          jwt: "jwt",
          eventType: "ClientWantsAllPlants",
          pageNumber: 1,
          pageSize: 5));
      return const Center(child: CircularProgressIndicator());
    } else {
      return ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(height: 8),
        scrollDirection: Axis.vertical,
        itemCount: serverEvent.plants.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: ((context, index) =>
            PlantCard(plant: serverEvent.plants[index])),
      );
    }
  }
}
