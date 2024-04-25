import 'package:flutter/material.dart';

const primary = Color.fromRGBO(32, 64, 6, 1);
const background = Color.fromRGBO(255, 255, 243, 0.923);
const secondary = Color.fromRGBO(98, 159, 51, 1);
const accent = Color.fromRGBO(46, 64, 87, 100);

const textDark = Color.fromRGBO(105, 103, 115, 1);
const texSecondary = Color.fromRGBO(180, 179, 185, 1);
const textLight = Color.fromRGBO(240, 240, 241, 1);

// Numbers to divide the MediaQuery.of(context).size.width with
const double textH1 = 13;
const double textH2 = 14;
const double textH3 = 16;
const double textH4 = 20;
const double textSmall = 25;

const defaultPadding = EdgeInsets.all(16);

const spacer = SizedBox(
  width: 12,
  height: 12,
);

final appTheme = ThemeData.light().copyWith(
  primaryColorDark: primary,
  primaryColorLight: background,
  primaryColor: secondary,
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: background,
    iconTheme: IconThemeData(color: textDark),
    titleTextStyle: TextStyle(color: textDark, fontSize: textH1),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    backgroundColor: primary,
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  )),
);
