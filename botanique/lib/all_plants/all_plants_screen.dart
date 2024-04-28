import 'package:botanique/all_plants/category_selection.dart';
import 'package:botanique/all_plants/plant_card.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class AllPlantsScreen extends StatelessWidget {
  const AllPlantsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppText(
            text: "My Plants",
            fontSize: FontSizes.h2,
            fontWeight: FontWeight.bold,
          ),
          _getSpacer(context),
          const CategorySelection(),
          _getSpacer(context),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(height: 8),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              physics: const BouncingScrollPhysics(),
              itemBuilder: ((context, index) => const PlantCard()),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getSpacer(BuildContext context) {
    return SizedBox(height: MediaQuery.of(context).size.height * 0.02);
  }
}
