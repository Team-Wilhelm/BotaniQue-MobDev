import 'package:botanique/home/home_screen_greeting.dart';
import 'package:botanique/home/need_some_love_row.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_screen_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeScreenGreeting(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenBanner(),
                SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                const AppText(
                  text: "These plants need your love",
                  fontSize: FontSizes.h4,
                ),
                const SizedBox(height: 16),
                _getPlants(context),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          ],
        ),
      ),
    );
  }

  Widget _getPlants(BuildContext context) {
    // TODO: create separate cubit for this, or react to ServerEvent
    final plants =
        context.read<AllPlantsCubit>().state.currentPlantList?.take(3) ?? [];

    List<Widget> plantWidgets = [];
    for (var i = 0; i < plants.length; i++) {
      plantWidgets.add(NeedSomeLoveRow(plant: plants.elementAt(i)));
      if (i != plants.length - 1) {
        plantWidgets.add(const SizedBox(height: 10));
      }
    }
    return Column(children: plantWidgets);
  }
}
