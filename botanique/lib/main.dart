import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/auth/auth_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/shared/navigation/app_navbar.dart';
import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/broadcast_ws_channel.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'add_plant/add_plant_screen.dart';
import 'models/events/client_events.dart';
import 'repositories/secure_storage_repository.dart';
import 'state/add_plant/add_plant_cubit.dart';
import 'style/app_style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Configure logging for bloc
  //Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  final wsUri =
      kIsWeb ? Uri.parse('ws://0.0.0.0:8181') : Uri.parse('ws://10.0.2.2:8181');
  final channel = BroadcastWsChannel(wsUri);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AllPlantsCubit>(
          create: (context) => AllPlantsCubit(),
        ),
        BlocProvider<NavigationCubit>(
          create: (context) => NavigationCubit(),
        ),
        BlocProvider<AddPlantCubit>(
          create: (context) => AddPlantCubit(),
        ),
        BlocProvider<PlantRequirementsCubit>(
          create: (context) => PlantRequirementsCubit(),
        ),
        BlocProvider<WebSocketBloc>(
          create: (context) => WebSocketBloc(channel: channel),
        ),
        BlocProvider<UpdateUserCubit>(create: (context) => UpdateUserCubit())
      ],
      child: const BotaniQueApp(),
    ),
  );
}

class BotaniQueApp extends StatefulWidget {
  const BotaniQueApp({
    super.key,
  });

  @override
  State<BotaniQueApp> createState() => _BotaniQueAppState();
}

class _BotaniQueAppState extends State<BotaniQueApp> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();

    SecureStorageRepository().getData(LocalStorageKeys.jwt).then((jwt) {
      if (jwt != null) {
        if (mounted) {
          context.read<WebSocketBloc>().add(
                ClientWantsToCheckJwtValidity(jwt: jwt),
              );
        }
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
    return MaterialApp(
      title: 'BotaniQue',
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      home: Scaffold(
        body: BlocConsumer<WebSocketBloc, ServerEvent>(
          listener: (context, serverEvent) => print(serverEvent
              .eventType), // _handleGlobalEvents(context, serverEvent),
          builder: (context, state) =>
              BlocConsumer<NavigationCubit, NavigationState>(
            listener: (context, state) => {
              _pageController.animateToPage(
                state.index,
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
              )
            },
            builder: (context, state) {
               return PageView(
                controller: _pageController,
                children: _screens,
              );
            },
          ),
        ),
        bottomNavigationBar: AppNavbar(
          isHidden: context.read<NavigationCubit>().isNavBarHidden(),
        ),
      ),
    );
  }
}

/* void _handleGlobalEvents(BuildContext context, ServerEvent serverEvent) {
  if (serverEvent is InitialServerEvent) {
    context.read<NavigationCubit>().changePage(NavigationConstants.welcome);
  } else if (serverEvent is ServerAuthenticatesUser) {
    context.read<NavigationCubit>().changePage(
        NavigationConstants.addPlant); // TODO: Change to home screen
  } else if (serverEvent is ServerRespondsNotAuthenticated) {
    context.read<NavigationCubit>().changePage(NavigationConstants.auth);
  } else if (serverEvent is ServerSendsAllCollections) {
    final collectionsCubit = context.read<AllPlantsCubit>();
    collectionsCubit.setCollections(serverEvent.collections);
    collectionsCubit
        .getPlantsForCurrentlySelectedCollection(context.read<WebSocketBloc>());
  } else if (serverEvent is ServerSendsPlants) {
    context.read<AllPlantsCubit>().setCurrentPlantList(serverEvent.plants);
  } else if (serverEvent is ServerRespondsValidationError) {
    print(
        'ServerEventWithError: ${(serverEvent as ServerEventWithError).error}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AppText(text: serverEvent.error),
        backgroundColor: AppColors.error,
      ),
    );
  } else if (serverEvent is ServerEventWithError) {
    print(
        'ServerEventWithError: ${(serverEvent as ServerEventWithError).error}');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: AppText(text: (serverEvent as ServerEventWithError).error),
        backgroundColor: AppColors.error,
      ),
    );
  }
} */
