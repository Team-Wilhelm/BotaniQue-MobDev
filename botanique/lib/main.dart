import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/shared/navigation/app_navbar.dart';
import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/current_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_plant/add_plant_screen.dart';
import 'state/add_plant/camera_access_bloc.dart';
import 'style/app_style.dart';

void main() {
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<AllPlantsCubit>(
        create: (context) => AllPlantsCubit(
          AllPlantsState.initial(),
        ),
      ),
      BlocProvider<CurrentPageCubit>(
        create: (context) => CurrentPageCubit(),
      ),
      BlocProvider<CameraAccessBloc>(
        create: (context) => CameraAccessBloc(),
      ),
      BlocProvider<PlantRequirementsCubit>(
        create: (context) => PlantRequirementsCubit(),
      ),
    ],
    child: BotaniQueApp(),
  ));
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
                onPageChanged: (index) {
                  context.read<CurrentPageCubit>().changePage(index);
                },
                children: _screens,
              );
            }),
        bottomNavigationBar: const AppNavbar(),
      ),
    );
  }
}
