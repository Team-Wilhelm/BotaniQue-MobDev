import 'package:flutter/material.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.grid_view),
          label: "Plants",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle_outline),
          label: "Add",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.document_scanner_outlined),
          label: "Scan",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    );
  }
}
