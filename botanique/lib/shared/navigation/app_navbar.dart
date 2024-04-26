import 'package:botanique/shared/navigation/app_navigation_item.dart';
import 'package:flutter/material.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppNavigationItem(
            route: "/home",
            label: "Home",
            icon: Icons.home,
          ),
          AppNavigationItem(
            route: "/plants",
            label: "Plants",
            icon: Icons.grid_view,
          ),
          AppNavigationItem(
              route: "/add-plant",
              label: "Add",
              icon: Icons.add_circle_outline),
          AppNavigationItem(
              route: "/scan",
              label: "Scan",
              icon: Icons.document_scanner_outlined),
          AppNavigationItem(
            route: "/settings",
            label: "Settings",
            icon: Icons.settings,
          ),
        ],
      ),
    );
  }
}
