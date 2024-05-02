import 'package:botanique/shared/navigation/app_navigation_item.dart';
import 'package:flutter/material.dart';

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
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppNavigationItem(
            routeLabel: NavigationConstants.home,
            label: "Home",
            icon: Icons.home,
          ),
          AppNavigationItem(
            routeLabel: NavigationConstants.allPlants,
            label: "Plants",
            icon: Icons.grid_view,
          ),
          AppNavigationItem(
            routeLabel: NavigationConstants.addPlant,
            label: "Add",
            icon: Icons.add_circle_outline,
          ),
          /*AppNavigationItem(
              route: "/scan",
              label: "Scan",
              icon: Icons.document_scanner_outlined),
              */ // TODO: Commented out for now
          AppNavigationItem(
            routeLabel: NavigationConstants.settings,
            label: "Settings",
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
