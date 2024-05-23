import 'package:botanique/all_plants/all_plants_screen.dart';
import 'package:botanique/auth/auth_screen.dart';
import 'package:botanique/home/home_screen.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/settings_screen.dart';
import 'package:botanique/shared/app_snackbar.dart';
import 'package:botanique/shared/navigation/app_navbar.dart';
import 'package:botanique/state/add_plant/plant_requirements_cubit.dart';
import 'package:botanique/state/all_plants_cubit.dart';
import 'package:botanique/state/home_cubit.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/content_size_helper.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localstorage/localstorage.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'add_plant/add_plant_screen.dart';
import 'state/add_plant/add_plant_cubit.dart';
import 'style/app_style.dart';
import 'util/navigation_constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await initLocalStorage();
  }

  // Configure logging for bloc
  //Bloc.observer = LoggerBlocObserver();

  // Connect to WebSocket
  final wsUri = kIsWeb
      ? Uri.parse('ws://localhost:8181')
      : Uri.parse('ws://10.0.2.2:8181');
  final channel = WebSocketChannel.connect(wsUri);

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
        BlocProvider<HomeCubit>(create: (context) => HomeCubit()),
        BlocProvider<WebSocketBloc>(
          create: (context) => WebSocketBloc(channel: channel),
        ),
        BlocProvider<UserCubit>(create: (context) => UserCubit())
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
  final PageController _pageController = PageController(
    initialPage:
        NavigationConstants.pageNameToIndex(NavigationConstants.welcome),
  );

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
        backgroundColor: AppColors.background,
        body: BlocConsumer<WebSocketBloc, ServerEvent>(
          listener: (context, serverEvent) =>
              _handleGlobalEvents(context, serverEvent),
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
              return Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: ContentSizeHelper.getContentWidth(context),
                  child: PageView(
                    controller: _pageController,
                    children: _screens,
                  ),
                ),
              );
            },
          ),
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, navigationState) {
          return AppNavbar(
            isHidden: navigationState.isNavBarHidden,
          );
        }),
      ),
    );
  }
}

void _handleGlobalEvents(BuildContext context, ServerEvent serverEvent) {
  /*if (serverEvent is InitialServerEvent) {
    context.read<NavigationCubit>().changePage(NavigationConstants.welcome);
  } */
  if (serverEvent is ServerAuthenticatesUser) {
    context.read<NavigationCubit>().changePage(NavigationConstants.home);
  } else if (serverEvent is ServerRespondsNotAuthenticated) {
    context.read<NavigationCubit>().changePage(NavigationConstants.auth);
  } else if (serverEvent is ServerSendsAllCollections) {
    final collectionsCubit = context.read<AllPlantsCubit>();
    collectionsCubit.setCollections(serverEvent.collections);
    collectionsCubit
        .getPlantsForCurrentlySelectedCollection(context.read<WebSocketBloc>());
  } else if (serverEvent is ServerSendsPlants) {
    context.read<AllPlantsCubit>().setCurrentPlantList(serverEvent.plants);
  } else if (serverEvent is ServerSendsCriticalPlants) {
    context.read<HomeCubit>().setCriticalPlants(serverEvent.plants);
  } else if (serverEvent is ServerSendsPlaceholderUrl) {
    context
        .read<AddPlantCubit>()
        .setPlaceholderSasUrl(serverEvent.placeholderUrl);
  } else if (serverEvent is ServerSendsErrorMessage) {
    if (serverEvent is ServerRespondsNotFound &&
        serverEvent.error.contains("No conditions log")) {
      // This is handled in the actual screen
      return;
    }
    print('Error: ${serverEvent.error}');
    AppSnackbar(context).showError(serverEvent.error);
  } else if (serverEvent is ServerSendsUserInfo) {
    context.read<UserCubit>().updateUsername(serverEvent.getUserDto.username);
    if (serverEvent.getUserDto.blobUrl != null) {
      context.read<UserCubit>().updateBlobUrl(serverEvent.getUserDto.blobUrl!);
    }
    context.read<NavigationCubit>().changePage(NavigationConstants.home);
  }
  // Profile updates
  else if (serverEvent is ServerConfirmsUpdateUsername) {
    context.read<UserCubit>().updateUsername(serverEvent.username);
    AppSnackbar(context).showSuccess("Username updated!");
  } else if (serverEvent is ServerConfirmsUpdatePassword) {
    AppSnackbar(context).showSuccess("Password updated!");
  } else if (serverEvent is ServerConfirmsProfileImageUpdate) {
    context.read<UserCubit>().updateBlobUrl(serverEvent.blobUrl);
    AppSnackbar(context).showSuccess("Profile image updated updated!");
  } else if (serverEvent is ServerConfirmsDeleteProfileImage) {
    context.read<UserCubit>().deleteBlobUrl();
    AppSnackbar(context).showSuccess("Profile image set to default!");
  } else if (serverEvent is ServerRejectsUpdate) {
    AppSnackbar(context).showError(serverEvent.error);
  }
}
