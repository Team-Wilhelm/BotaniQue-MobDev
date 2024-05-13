import 'package:botanique/home/home_screen_greeting.dart';
import 'package:botanique/home/need_some_love_row.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

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
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                const AppText(
                  text: "These plants need some love",
                  fontSize: FontSizes.h5,
                ),
                const SizedBox(height: 8),
                NeedSomeLoveRow(),
                NeedSomeLoveRow(),
                NeedSomeLoveRow(),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const AppText(
              text: "More plants",
              fontSize: FontSizes.h5,
            ),
          ],
        ),
      ),
    );
  }
}
