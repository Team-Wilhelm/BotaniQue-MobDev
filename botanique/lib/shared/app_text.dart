import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.fontPercentage = textSmall,
    this.colour = textDark,
  });

  final String text;
  final Color colour;
  final double fontPercentage;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colour,
        fontSize: MediaQuery.of(context).size.width / fontPercentage,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
