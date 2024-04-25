import 'package:botanique/home/need_some_love_row.dart';
import 'package:botanique/shared/app_navbar.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String name = "Name";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        padding: getEdgeInsets(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: "Hi, $name",
              fontPercentage: textH3,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            AppTextField(
              textFieldController: TextEditingController(),
              placeholder: "Search for a plant...",
              icon: const Icon(Icons.search),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "These plants need some love",
                  fontPercentage: textH5,
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
              fontPercentage: textH5,
            ),
          ],
        ),
      ),
      bottomNavigationBar: const AppNavbar(),
    );
  }

  EdgeInsets getEdgeInsets(BuildContext context) {
    double sidePadding = MediaQuery.of(context).size.width * 0.1;
    double topAndBottomPadding = MediaQuery.of(context).size.height * 0.05;

    return EdgeInsets.symmetric(
        horizontal: sidePadding, vertical: topAndBottomPadding);
  }
}
