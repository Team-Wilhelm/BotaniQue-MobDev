import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/auth/auth_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/shared/navigation/app_navbar.dart';
import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localstorage/localstorage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'add_plant/add_plant_screen.dart';
import 'models/events/client_events.dart';
import 'repositories/local_storage_repository.dart';
import 'state/add_plant/add_plant_bloc.dart';
import 'style/app_style.dart';
import 'util/navigation_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocalStorage();
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
        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider<AddPlantBloc>(
          create: (context) => AddPlantBloc(),
        ),
        BlocProvider<PlantRequirementsCubit>(
          create: (context) => PlantRequirementsCubit(),
        ),
        BlocProvider<WebSocketBloc>(
          create: (context) => WebSocketBloc(channel: channel),
        )
      ],
      child: BotaniQueApp(),
    ),
  );
}

class BotaniQueApp extends StatelessWidget {
  BotaniQueApp({
    super.key,
  });

  final List<Widget> _screens = [
    const HomeScreen(),
    const AllPlantsScreen(),
    const AddPlantScreen(),
    const SettingsScreen(),
    const WelcomeScreen(),
    const AuthScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final jwt = LocalStorageRepository().getData(LocalStorageKeys.jwt);
    if (jwt != null) {
      context.read<WebSocketBloc>().add(
            ClientWantsToCheckJwtValidity(
                jwt: jwt, eventType: "ClientWantsToCheckJwtValidity"),
          );
    }

    final PageController pageController = PageController(
        initialPage: context.read<NavigationCubit>().state.index);
    return BlocBuilder<WebSocketBloc, ServerEvent>(
        builder: (context, snapshot) {
      if (snapshot is ServerAuthenticatesUser) {
        context.read<NavigationCubit>().changePage(NavigationConstants.home);
      }
      return MaterialApp(
        title: 'BotaniQue',
        debugShowCheckedModeBanner: false,
        theme: appTheme,
        home: Scaffold(
          body: BlocConsumer<NavigationCubit, NavigationState>(
              listener: (context, state) => {
                    pageController.animateToPage(
                      state.index,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    )
                  },
              builder: (context, state) {
                return PageView(
                  controller: pageController,
                  children: _screens,
                );
              }),
          bottomNavigationBar: AppNavbar(
            isHidden: context.read<NavigationCubit>().isNavBarHidden(),
          ),
        ),
      );
    });
  }
}
