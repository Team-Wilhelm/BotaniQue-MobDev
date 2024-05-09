import 'package:botanique/models/models/collections.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CollectionsCubit extends Cubit<CollectionsState> {
  CollectionsCubit() : super(CollectionsState.empty());

  void setCollections(List<Collection> collections) {
    final collectionsWithAllOption = List<Collection>.from(collections)
      ..insert(0, Collection.allPlants()); // insert all plants option at the beginning
    emit(state.copyWith(collections: collectionsWithAllOption));
  }

  void selectCollection(Collection collection) {
    emit(state.copyWith(selectedCollection: collection));
  }
}

class CollectionsState {
  final Collection selectedCollection;
  final List<Collection> collections;

  CollectionsState(
      {required this.selectedCollection, required this.collections});

  CollectionsState.empty()
      : this(
            selectedCollection: Collection.allPlants(),
            collections: [Collection.allPlants()]);

  CollectionsState copyWith({
    Collection? selectedCollection,
    List<Collection>? collections,
  }) {
    return CollectionsState(
      selectedCollection: selectedCollection ?? this.selectedCollection,
      collections: collections ?? this.collections,
    );
  }
}
