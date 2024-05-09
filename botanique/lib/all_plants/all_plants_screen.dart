import 'package:botanique/all_plants/all_plants_grid.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/collections_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../models/models/plant.dart';
import 'collection_selection.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: BlocBuilder<WebSocketBloc, ServerEvent>(
        builder: (context, serverEvent) {
          return RefreshIndicator.adaptive(
            onRefresh: () => _getDataForAllPlantsScreen(context),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: CollectionSelection()),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                _getChildFromState(context, serverEvent),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _getChildFromState(BuildContext context, ServerEvent serverEvent) {
    final collectionsCubit = context.read<CollectionsCubit>();
    if (serverEvent is ServerSendsAllCollections) {
      collectionsCubit.setCollections(serverEvent.collections);
      collectionsCubit.selectCollection(
          collectionsCubit.state.collections.first,
          context.read<WebSocketBloc>());
    } else if (serverEvent is! ServerSendsAllPlants &&
        serverEvent is! ServerSendsPlantsForCollection) {
      _requestCollections(context);
    } else {
      final plants = serverEvent is ServerSendsAllPlants
          ? serverEvent.plants
          : serverEvent is ServerSendsPlantsForCollection
              ? serverEvent.plants
              : <Plant>[];
      collectionsCubit.setCurrentPlantList(plants);
      return const AllPlantsGrid();
    }

    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Future<void> _requestCollections(BuildContext context) async {
    context.read<WebSocketBloc>().add(const ClientWantsAllCollections(
        jwt: "jwt", eventType: "ClientWantsAllCollections"));
  }

  Future<void> _getDataForAllPlantsScreen(BuildContext context) async {
    _requestCollections(context);
    context
        .read<CollectionsCubit>()
        .getPlantsForSelectedCollection(context.read<WebSocketBloc>());
  }
}
