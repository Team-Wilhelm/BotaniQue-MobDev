import 'package:botanique/home/home_screen_greeting.dart';
import 'package:botanique/home/need_some_love_row.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/state/home_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/models/plant.dart';
import '../util/content_size_helper.dart';
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
            SizedBox(
                height: ContentSizeHelper.getContentHeight(context) * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeScreenBanner(),
                SizedBox(
                    height: ContentSizeHelper.getContentHeight(context) * 0.04),
                const AppText(
                  text: "These plants need your love",
                  fontSize: FontSizes.h4,
                ),
                const SizedBox(height: 16),
                BlocBuilder<HomeCubit, List<GetCriticalPlantDto>>(
                  builder: (context, plantList) {
                    return _buildNeedSomeLoveList(context, plantList);
                  },
                ),
              ],
            ),
            SizedBox(
                height: ContentSizeHelper.getContentHeight(context) * 0.02),
          ],
        ),
      ),
    );
  }

  Widget _buildNeedSomeLoveList(
      BuildContext context, List<GetCriticalPlantDto> plants) {
    List<Widget> plantWidgets = [];
    if (plants.isEmpty) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        width: double.infinity,
        height: ContentSizeHelper.getContentHeight(context) * 0.15,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.cardBackground,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: TextColors.textSecondary.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: AppText(
                text:
                    "We couldn't find any plants that need your immediate attention.",
                overflow: TextOverflow.visible,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            AppText(text: "Check back later!"),
          ],
        ),
      );
    }

    for (var i = 0; i < plants.length; i++) {
      plantWidgets.add(NeedSomeLoveRow(plant: plants.elementAt(i)));
      if (i != plants.length - 1) {
        plantWidgets.add(const SizedBox(height: 10));
      }
    }
    return Column(children: plantWidgets);
  }
}
