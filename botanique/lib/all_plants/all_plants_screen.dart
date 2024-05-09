import 'package:botanique/all_plants/plant_card.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import 'category_selection.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: BlocBuilder<WebSocketBloc, ServerEvent>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () => _requestAllPlants(context),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppTextField(
                        textFieldController:
                            TextEditingController(), // TODO: Implement search
                        placeholder: "Search for a plant...",
                        suffixIcon: const Icon(Icons.search),
                      ),
                      _getSpacer(context),
                      const CategorySelection(),
                      _getSpacer(context),
                    ],
                  ),
                ),
                _getChildFromState(context, state),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _getSpacer(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }

  Widget _getChildFromState(BuildContext context, ServerEvent serverEvent) {
    if (serverEvent is! ServerSendsAllPlants) {
      _requestAllPlants(context);
      return const SliverFillRemaining(
        hasScrollBody: false,
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else {
      return SliverAnimatedGrid(
        // TODO: maybe remove the animation, we're not really using it
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          maxCrossAxisExtent: 200,
        ),
        itemBuilder: (context, index, animation) => FadeTransition(
          opacity: animation,
          child: PlantCard(plant: serverEvent.plants[index]),
        ),

        initialItemCount: serverEvent.plants.length,
      );
    }
  }

  Future<void> _requestAllPlants(BuildContext context) async {
    context.read<WebSocketBloc>().add(ClientWantsAllPlants(
        jwt: "jwt",
        eventType: "ClientWantsAllPlants",
        pageNumber: 1,
        pageSize: 5));
  }
}
