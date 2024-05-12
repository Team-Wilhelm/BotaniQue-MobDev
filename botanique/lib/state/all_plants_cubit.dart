import 'package:botanique/models/models/collections.dart';
import 'package:botanique/models/models/plant.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../models/models/uuid.dart';

class AllPlantsCubit extends Cubit<AllPlantsState> {
  AllPlantsCubit() : super(AllPlantsState.empty());

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

  void getPlantsForCurrentlySelectedCollection(WebSocketBloc webSocketBloc) {
    _requestPlantsFromServer(
        state.selectedCollection.collectionId, webSocketBloc);
  }

  void setCurrentPlantList(List<Plant> plants) {
    state.copyWith(previousPlantList: state.currentPlantList);
    emit(state.copyWith(currentPlantList: plants));
  }

  Future<void> refreshData(WebSocketBloc webSocketBloc) {
    _requestCollectionsFromServer(webSocketBloc);
    _requestPlantsFromServer(
        state.selectedCollection.collectionId, webSocketBloc);
    return Future.value();
  }

  void _requestCollectionsFromServer(WebSocketBloc webSocketBloc) {
    webSocketBloc.add(
      ClientWantsAllCollections(
        jwt: "jwt",
        eventType: "ClientWantsAllCollections",
      ),
    );
  }

  void _requestPlantsFromServer(
      Uuid collectionId, WebSocketBloc webSocketBloc) {
    if (collectionId == allPlantsCollectionId) {
      webSocketBloc.add(
        ClientWantsAllPlants(
          jwt: "jwt",
          eventType: "ClientWantsAllPlants",
          pageNumber: 1,
          pageSize: 100,
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

class AllPlantsState {
  final GetCollectionDto selectedCollection;
  final List<GetCollectionDto> collections;
  final List<Plant>? currentPlantList;

  AllPlantsState({
    required this.selectedCollection,
    required this.collections,
    required this.currentPlantList,
  });

  AllPlantsState.empty()
      : this(
          selectedCollection: GetCollectionDto.allPlants(),
          collections: [GetCollectionDto.allPlants()],
          currentPlantList: null,
        );

  AllPlantsState copyWith({
    GetCollectionDto? selectedCollection,
    List<GetCollectionDto>? collections,
    List<Plant>? currentPlantList,
    List<Plant>? previousPlantList,
    List<int>? addedPlantIndices,
    List<int>? removedPlantIndices,
  }) {
    return AllPlantsState(
      selectedCollection: selectedCollection ?? this.selectedCollection,
      collections: collections ?? this.collections,
      currentPlantList: currentPlantList ?? this.currentPlantList,
    );
  }
}
