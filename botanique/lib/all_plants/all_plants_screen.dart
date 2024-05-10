import 'package:botanique/all_plants/all_plants_grid.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/web_socket_bloc.dart';
import 'collection_selection.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: BlocBuilder<AllPlantsCubit, AllPlantsState>(
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            onRefresh: () => context
                .read<AllPlantsCubit>()
                .refreshData(context.read<WebSocketBloc>()),
            child: CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(child: CollectionSelection()),
                const SliverToBoxAdapter(child: SizedBox(height: 20)),
                if (state.currentPlantList == null)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  )
                else if (state.currentPlantList!.isEmpty)
                  const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                        child: AppText(
                            text: "You don't have any plants yet. Add some!")),
                  )
                else
                  const AllPlantsGrid(),
              ],
            ),
          );
        },
      ),
    );
  }
}
