import 'package:botanique/models/models/collections.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_button.dart';
import '../state/all_plants_cubit.dart';

class CollectionSelection extends StatelessWidget {
  const CollectionSelection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllPlantsCubit, AllPlantsState>(
      builder: (context, snapshot) {
        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: snapshot.collections
                .map(
                  (collection) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: AppButton(
                      text: collection.name,
                      onPressed: () => _selectCollection(context, collection),
                      buttonType:
                          snapshot.selectedCollection.name == collection.name
                              ? ButtonType.primary
                              : ButtonType.inactive,
                      buttonShape: ButtonShape.square,
                    ),
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }

  void _selectCollection(BuildContext context, GetCollectionDto collection) {
    final webSocketBloc = context.read<WebSocketBloc>();
    context.read<AllPlantsCubit>().selectCollection(collection, webSocketBloc);
  }
}
