import 'package:botanique/models/models/collections.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../models/models/uuid.dart';

class CollectionsCubit extends Cubit<CollectionsState> {
  CollectionsCubit() : super(CollectionsState.empty());

  void setCollections(List<GetCollectionDto> collections) {
    final collectionsWithAllOption = List<GetCollectionDto>.from(collections)
      ..insert(
          0,
          GetCollectionDto
              .allPlants()); // insert all plants option at the beginning
    emit(state.copyWith(collections: collectionsWithAllOption));
  }

  void selectCollection(
      GetCollectionDto collection, WebSocketBloc webSocketBloc) {
    _requestPlantsFromServer(collection.collectionId, webSocketBloc);
    emit(state.copyWith(selectedCollection: collection));
  }

  void getPlantsForSelectedCollection(WebSocketBloc webSocketBloc) {
    _requestPlantsFromServer(
        state.selectedCollection.collectionId, webSocketBloc);
  }

  void _requestPlantsFromServer(
      Uuid collectionId, WebSocketBloc webSocketBloc) {
    if (collectionId == "all-plants") {
      webSocketBloc.add(
        ClientWantsAllPlants(
          jwt: "jwt",
          eventType: "ClientWantsAllPlants",
          pageNumber: 1,
          pageSize: 5,
        ),
      );
    } else {
      webSocketBloc.add(
        ClientWantsPlantsForCollection(
          jwt: "jwt",
          eventType: "ClientWantsPlantsForCollection",
          collectionId: collectionId,
        ),
      );
    }
  }
}

class CollectionsState {
  final GetCollectionDto selectedCollection;
  final List<GetCollectionDto> collections;
  final List<Plant> plants;

  CollectionsState(
      {required this.selectedCollection,
      required this.collections,
      required this.plants});

  CollectionsState.empty()
      : this(
            selectedCollection: GetCollectionDto.allPlants(),
            collections: [GetCollectionDto.allPlants()],
            plants: []);

  CollectionsState copyWith({
    GetCollectionDto? selectedCollection,
    List<GetCollectionDto>? collections,
    List<Plant>? plants,
  }) {
    return CollectionsState(
      selectedCollection: selectedCollection ?? this.selectedCollection,
      collections: collections ?? this.collections,
      plants: plants ?? this.plants,
    );
  }
}
