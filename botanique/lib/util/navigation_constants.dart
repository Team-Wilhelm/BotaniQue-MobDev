import 'package:flutter/widgets.dart';

import '../add_plant/add_plant_screen.dart';
import '../all_plants/all_plants_screen.dart';
import '../auth/log_in_screen.dart';
import '../auth/sign_up_screen.dart';
import '../home/home_screen.dart';
import '../settings/settings_screen.dart';
import '../welcome/welcome_screen.dart';

class NavigationConstants {
  static const String home = 'home';
  static const String allPlants = 'allPlants';
  static const String addPlant = 'addPlant';
  static const String settings = 'settings';
  static const String welcome = 'welcome';
  static const String logIn = 'logIn';
  static const String signUp = 'signUp';

  static final Map<String, int> _pageNameIndexMap = {
    NavigationConstants.home: 0,
    NavigationConstants.allPlants: 1,
    NavigationConstants.addPlant: 2,
    NavigationConstants.settings: 3,
    NavigationConstants.welcome: 4,
    NavigationConstants.logIn: 5,
    NavigationConstants.signUp: 6,
  };

  static int pageNameToIndex(String pageName) {
    final int? index = _pageNameIndexMap[pageName];
    if (index == null) {
      throw Exception('Page $pageName not found');
    }
    return index;
  }

  Widget getPage(String pageName) {
    switch (pageName) {
      case NavigationConstants.home:
        return const HomeScreen();
      case NavigationConstants.allPlants:
        return const AllPlantsScreen();
      case NavigationConstants.addPlant:
        return const AddPlantScreen();
      case NavigationConstants.settings:
        return const SettingsScreen();
      case NavigationConstants.welcome:
        return const WelcomeScreen();
      case NavigationConstants.logIn:
        return const LogInScreen();
      case NavigationConstants.signUp:
        return const SignUpScreen();
      default:
        throw Exception('Page $pageName not found');
    }
  }
}