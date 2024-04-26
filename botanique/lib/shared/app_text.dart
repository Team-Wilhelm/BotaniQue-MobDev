import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.fontSize = TextSizes.regular,
    this.colour = TextColors.textDark,
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
  });

  final String text;
  final Color colour;
  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: colour,
        fontSize: MediaQuery.of(context).size.width / fontSize,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
