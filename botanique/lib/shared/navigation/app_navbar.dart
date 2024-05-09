import 'package:botanique/shared/navigation/app_navigation_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../state/all_plants_cubit.dart';
import '../../state/web_socket_bloc.dart';
import '../../util/navigation_constants.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({
    super.key,
    this.isHidden = false,
  });

  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    if (isHidden) {
      return const SizedBox.shrink();
    }
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        border: Border(
          top: BorderSide(
            color: Theme.of(context).colorScheme.onSurface.withOpacity(0.1),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppNavigationItem(
            routeLabel: NavigationConstants.home,
            label: "Home",
            icon: Icons.home,
            onTap: () {
              // TODO: load data for page
            },
          ),
          AppNavigationItem(
            routeLabel: NavigationConstants.allPlants,
            label: "Plants",
            icon: Icons.grid_view,
            onTap: () {
              context
                  .read<AllPlantsCubit>()
                  .refreshData(context.read<WebSocketBloc>());
            },
          ),
          AppNavigationItem(
            routeLabel: NavigationConstants.addPlant,
            label: "Add",
            icon: Icons.add_circle_outline,
            onTap: () {
              // TODO: load data for page
            },
          ),
          AppNavigationItem(
            routeLabel: NavigationConstants.settings,
            label: "Settings",
            icon: Icons.settings,
            onTap: () {
              // TODO: load data for page
            },
          ),
        ],
      ),
    );
  }
}
