import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.text,
    this.fontSize = FontSizes.regular,
    this.colour = TextColors.textDark,
    this.fontWeight = FontWeight.normal,
    this.decoration = TextDecoration.none,
    this.textAlign = TextAlign.left,
    this.overflow = TextOverflow.ellipsis,
    this.softWrap = true,
  });

  final String text;
  final Color colour;
  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration decoration;
  final TextAlign textAlign;
  final TextOverflow overflow;
  final bool softWrap;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: softWrap,
      style: TextStyle(
        color: colour,
        fontSize: _getFontSize(context),
        fontWeight: fontWeight,
        decoration: decoration,
        overflow: overflow,
      ),
    );
  }

  _getFontSize(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      return screenWidth / fontSize;
    } else if (screenWidth < 800) {
      return screenWidth / fontSize / 1.5;
    } else {
      return 800 / fontSize / 1.5;
    }
  }
}
