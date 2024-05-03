import 'package:flutter/material.dart';

class TextColors {
  static const textDark = Color.fromRGBO(105, 103, 115, 1);
  static const textSecondary = Color.fromRGBO(180, 179, 185, 1);
  static const textLight = Color.fromRGBO(240, 240, 241, 1);
}

// Numbers to divide the MediaQuery.of(context).size.width with
class FontSizes {
  static const double h1 = 13;
  static const double h2 = 14;
  static const double h3 = 16;
  static const double h4 = 18;
  static const double h5 = 20;
  static const double h6 = 22;
  static const double regular = 24;
  static const double small = 30;
  static const double tiny = 34;
}

// TODO: colour scheme
class AppColors {
  static const Color primary = Color.fromRGBO(32, 64, 6, 1);
  static const Color background =
      Color(0xFFfdf1e3); // white: Color(0xFFF7F4F3);
  static const Color secondary = Color.fromRGBO(98, 159, 51, 1);
  static const Color accent = Color.fromRGBO(46, 64, 87, 100);
  static const Color welcomeScreenBackground =
      Color.fromRGBO(255, 255, 243, 0.923);
  static const Color cardBackground = Color(0xFFf0f9f6);
  // beige const Color(0xFFfadbb8);
}

const defaultPadding = EdgeInsets.all(16);

const spacer = SizedBox(
  width: 12,
  height: 12,
);

final appTheme = ThemeData.light().copyWith(
  colorScheme: const ColorScheme.light(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    background: AppColors.background,
    surface: AppColors.cardBackground,
    onPrimary: TextColors.textLight,
    onSecondary: TextColors.textDark,
    onBackground: TextColors.textDark,
  ),
  appBarTheme: const AppBarTheme(
    elevation: 1,
    backgroundColor: AppColors.background,
    iconTheme: IconThemeData(color: TextColors.textDark),
    titleTextStyle:
        TextStyle(color: TextColors.textDark, fontSize: FontSizes.h1),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    backgroundColor: AppColors.primary,
    elevation: 1,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  )),
);
