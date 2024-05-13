import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  static const Map<int, Color> primary = {
    0: Color(0xFF27754a), // base colour
    20: Color(0xFF1f5e3b),
    40: Color(0xFF17462c),
    60: Color(0xFF102f1e),
  };
  static const Color background = Colors.white; // Color(0xFFF7F4F3);
  // beige: Color(0xFFfdf1e3);
  static const Color secondary = Color(0xFF629F33);
  static const Color accent = Color(0x9C2E4057);
  static const Color welcomeScreenBackground = Color(0xEBFFFFF3);
  static const Color cardBackground = Color(0xFFece8e5);
  // beige const Color(0xFFfadbb8);
  static const Color error = Color(0xFF822143);
  static const Color inputFill = Color(0xFFe9f1ed);
}

const defaultPadding = EdgeInsets.all(16);

const spacer = SizedBox(
  width: 12,
  height: 12,
);

const spacerDouble = SizedBox(
  width: 24,
  height: 24,
);

final appTheme = ThemeData.light().copyWith(
    colorScheme: ColorScheme.light(
      primary: AppColors.primary[0]!,
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
        //TODO: eventually remove
        style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary[0],
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    )),
    textTheme: GoogleFonts.lexendDecaTextTheme());
