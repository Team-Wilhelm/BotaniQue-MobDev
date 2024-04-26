import 'package:botanique/shared/screen_base.dart';
import 'package:flutter/material.dart';

class PlantDetailScreen extends StatelessWidget {
  const PlantDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(
        children: [
          const Text("Plant Detail Screen"),
        ],
      ),
    );
  }
}
