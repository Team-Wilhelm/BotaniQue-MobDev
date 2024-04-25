import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/auth/log_in_screen.dart';
import 'package:botanique/auth/sign_up_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'add_plant/add_plant_screen.dart';
import 'utils/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: "/welcome",
      routes: {
        "/welcome": (context) => WelcomeScreen(),
        "/home": (context) => HomeScreen(),
        "/login": (context) => LogInScreen(),
        "/signup": (context) => SignUpScreen(),
        "/settings": (context) => SettingsScreen(),
        "/plants": (context) => AllPlantsScreen(),
        "/add_plant": (context) => AddPlantScreen(),
      },
      home: SafeArea(child: WelcomeScreen()),
    );
  }
}
