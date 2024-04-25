import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/auth/log_in_screen.dart';
import 'package:botanique/auth/sign_up_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_plant/add_plant_screen.dart';
import 'style/app_style.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => AllPlantsCubit(
      AllPlantsState.initial(),
    ),
    child: const BotaniQueApp(),
  ));
}

class BotaniQueApp extends StatelessWidget {
  const BotaniQueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: "/plants",
      routes: {
        "/welcome": (context) => WelcomeScreen(),
        "/home": (context) => HomeScreen(),
        "/login": (context) => LogInScreen(),
        "/signup": (context) => SignUpScreen(),
        "/settings": (context) => SettingsScreen(),
        "/plants": (context) => AllPlantsScreen(),
        "/add-plant": (context) => AddPlantScreen(),
      },
    );
  }
}
