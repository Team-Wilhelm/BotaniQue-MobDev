import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/settings/collections/collection_card.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/shared/top_bar.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../models/models/collections.dart';
import '../../style/app_style.dart';
import 'collection_input_card.dart';

class EditCollectionsScreen extends StatefulWidget {
  EditCollectionsScreen({super.key});

  @override
  State<EditCollectionsScreen> createState() => _EditCollectionsScreenState();
}

class _EditCollectionsScreenState extends State<EditCollectionsScreen> {
  final TextEditingController _addController = TextEditingController();
  TextEditingController? _editController;
  int? editingIndex;
  String? originalName;

  @override
  void dispose() {
    _addController.dispose();
    _editController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          if (editingIndex != null &&
              (_editController?.text == originalName ||
                  (_editController?.text.isEmpty ?? true))) {
            _exitEditMode();
          }
        },
        child: ScreenBase(
          child: Column(
            children: [
              const TopBar(title: "Manage Collections"),
              spacer,
              GestureDetector(
                onTap: () {
                  if (editingIndex != null) {
                    _exitEditMode();
                  }
                },
                child: CollectionInputCard(
                  controller: _addController,
                  placeholder: "Add a new collection...",
                  onSubmit: () {
                    _handleAddNewCollection(context);
                  },
                ),
              ),
              spacer,
              BlocBuilder<AllPlantsCubit, AllPlantsState>(
                  builder: (context, state) {
                final collections = state.collections;
                return Expanded(
                  child: ListView.builder(
                    itemCount: collections.length,
                    itemBuilder: (context, index) {
                      final collection = collections[index];
                      return GestureDetector(
                        onTap: () {},
                        child: editingIndex == index
                            ? CollectionInputCard(
                                controller: _editController!,
                                placeholder: "Edit collection name...",
                                onSubmit: () {
                                  _handleEditCollection(context, collection); // Exit edit mode
                                },
                              )
                            : CollectionCard(
                                collection: collection,
                                onEditTapped: () {
                                  setState(() {
                                    editingIndex = index;
                                    originalName = collection.name;
                                    _editController = TextEditingController(
                                        text: collection.name);
                                  });
                                },
                                onDeleteTapped: () {
                                  _handleDeleteCollection(collection);
                                },
                              ),
                      );
                    },
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void _handleAddNewCollection(BuildContext context) {
    if (_addController.text.isNotEmpty) {
      context.read<WebSocketBloc>().add(
            ClientWantsToCreateCollection(
              jwt: "",
              createCollectionDto: CreateCollectionDto(
                  name: _addController.text),
            ),
          );
    }
    _addController.clear();
  }

  void _handleEditCollection(BuildContext context, GetCollectionDto collection) {
    if (_editController!.text != originalName &&
        _editController!.text.isNotEmpty) {
      context.read<WebSocketBloc>().add(
            ClientWantsToUpdateCollection(
              jwt: "",
              updateCollectionDto:
                  UpdateCollectionDto(
                      collectionId:
                          collection.collectionId,
                      name:
                          _editController!.text),
            ),
          );
    }
    _exitEditMode();
  }

  void _handleDeleteCollection(GetCollectionDto collection) {
    context.read<WebSocketBloc>().add(ClientWantsToDeleteCollection(
        jwt: '', collectionId: collection.collectionId));
  }

  void _exitEditMode() {
    setState(() {
      editingIndex = null;
      _editController?.dispose();
      _editController = null;
    });
  }
}
