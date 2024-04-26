import 'package:botanique/shared/navigation/app_navigation_item.dart';
import 'package:flutter/material.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppNavigationItem(
            routeIndex: 0,
            label: "Home",
            icon: Icons.home,
          ),
          AppNavigationItem(
            routeIndex: 1,
            label: "Plants",
            icon: Icons.grid_view,
          ),
          AppNavigationItem(
            routeIndex: 2,
            label: "Add",
            icon: Icons.add_circle_outline,
          ),
          /*AppNavigationItem(
              route: "/scan",
              label: "Scan",
              icon: Icons.document_scanner_outlined),
              */ // TODO: Commented out for now
          AppNavigationItem(
            routeIndex: 3,
            label: "Settings",
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
