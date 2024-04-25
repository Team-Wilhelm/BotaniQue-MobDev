import 'package:flutter/material.dart';

const _primary = Color.fromRGBO(32, 64, 6, 1);
const _background = Color.fromRGBO(255, 255, 243, 0.923);
const _secondary = Color.fromRGBO(98, 159, 51, 1);
const _accent = Color.fromRGBO(46, 64, 87, 100);

class TextColors {
  static const textDark = Color.fromRGBO(105, 103, 115, 1);
  static const textSecondary = Color.fromRGBO(180, 179, 185, 1);
  static const textLight = Color.fromRGBO(240, 240, 241, 1);
}

// Numbers to divide the MediaQuery.of(context).size.width with
const double textH1 = 13;
const double textH2 = 14;
const double textH3 = 16;
const double textH4 = 18;
const double textH5 = 20;
const double textSmall = 24;

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
    titleTextStyle: TextStyle(color: TextColors.textDark, fontSize: textH1),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    backgroundColor: _primary,
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  )),
);
