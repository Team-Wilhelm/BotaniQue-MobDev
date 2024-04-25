import 'package:botanique/all_plants/category_selection.dart';
import 'package:flutter/material.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Padding(
          padding: getEdgeInsets(context),
          child: Column(
            children: [
              CategorySelection(),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets getEdgeInsets(BuildContext context) {
    double sidePadding = MediaQuery.of(context).size.width * 0.05;
    double topAndBottomPadding = MediaQuery.of(context).size.height * 0.02;

    return EdgeInsets.symmetric(
        horizontal: sidePadding, vertical: topAndBottomPadding);
  }
}
