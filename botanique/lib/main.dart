import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/shared/navigation/app_navbar.dart';
import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/current_page_cubit.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'add_plant/add_plant_screen.dart';
import 'state/add_plant/add_plant_bloc.dart';
import 'style/app_style.dart';

void main() {
  // Configure logging for bloc
  //Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  final wsUri =
      kIsWeb ? Uri.parse('ws://0.0.0.0:8181') : Uri.parse('ws://10.0.2.2:8181');
  final channel = WebSocketChannel.connect(wsUri);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AllPlantsCubit>(
          create: (context) => AllPlantsCubit(
            AllPlantsState.initial(),
          ),
        ),
        BlocProvider<CurrentPageCubit>(
          create: (context) => CurrentPageCubit(),
        ),
        BlocProvider<AddPlantBloc>(
          create: (context) => AddPlantBloc(),
        ),
        BlocProvider<PlantRequirementsCubit>(
          create: (context) => PlantRequirementsCubit(),
        ),
        BlocProvider<WebSocketBloc>(
          create: (context) => WebSocketBloc(channel: channel),
        ),
        BlocProvider<UpdateUserCubit>(
          create: (context) => UpdateUserCubit())
      ],
      child: BotaniQueApp(),
    ),
  );
}

class BotaniQueApp extends StatelessWidget {
  BotaniQueApp({
    super.key,
  });

  final _pageController = PageController();

  final List<Widget> _screens = [
    const HomeScreen(),
    const AllPlantsScreen(),
    const AddPlantScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BotaniQue',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
        body: BlocConsumer<CurrentPageCubit, int>(
            listener: (context, state) => {
                  _pageController.animateToPage(
                    state,
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInOut,
                  )
                },
            builder: (context, state) {
              return PageView(
                controller: _pageController,
                children: _screens,
              );
            }),
        bottomNavigationBar: const AppNavbar(),
      ),
    );
  }
}
