import 'package:botanique/home/need_some_love_row.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/screen_base.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String name = "Name";

  @override
  Widget build(BuildContext context) {
    return ScreenBase(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: "Hi, $name",
              fontSize: FontSizes.h3,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "These plants need some love",
                  fontSize: FontSizes.h5,
                ),
                SizedBox(
                  height: 8,
                ),
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
