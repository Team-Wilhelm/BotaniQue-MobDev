import 'package:flutter/material.dart';

const _primary = Color.fromRGBO(32, 64, 6, 1);
const _background = Color.fromRGBO(247, 244, 243, 1);
const _secondary = Color.fromRGBO(98, 159, 51, 1);
const _accent = Color.fromRGBO(46, 64, 87, 100);

const welcomeScreenBackground = Color.fromRGBO(255, 255, 243, 0.923);

class TextColors {
  static const textDark = Color.fromRGBO(105, 103, 115, 1);
  static const textSecondary = Color.fromRGBO(180, 179, 185, 1);
  static const textLight = Color.fromRGBO(240, 240, 241, 1);
}

// Numbers to divide the MediaQuery.of(context).size.width with
class TextSizes {
  static const double h1 = 13;
  static const double h2 = 14;
  static const double h3 = 16;
  static const double h4 = 18;
  static const double h5 = 20;
  static const double regular = 24;
}

const defaultPadding = EdgeInsets.all(16);

const spacer = SizedBox(
  width: 12,
  height: 12,
);

final appTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light(
    primary: _primary,
    secondary: _secondary,
    background: _background,
    onPrimary: TextColors.textLight,
    onSecondary: TextColors.textDark,
    onBackground: TextColors.textDark,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: _background,
    iconTheme: IconThemeData(color: TextColors.textDark),
    titleTextStyle:
        TextStyle(color: TextColors.textDark, fontSize: TextSizes.h1),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    backgroundColor: _primary,
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  )),
);
