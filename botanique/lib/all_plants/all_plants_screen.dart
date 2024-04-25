import 'package:botanique/all_plants/category_selection.dart';
import 'package:botanique/all_plants/plant_card.dart';
import 'package:botanique/shared/app_navbar.dart';
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
              const CategorySelection(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1 / 1.25,
                  ),
                  itemBuilder: ((context, index) => const PlantCard()),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: AppNavbar(),
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
