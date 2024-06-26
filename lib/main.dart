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
  const ci = bool.fromEnvironment('CI', defaultValue: false);
  var wsUri = kIsWeb
      ? Uri.parse('ws://localhost:8181')
      : Uri.parse('ws://10.0.2.2:8181');
  if (ci) {
    wsUri = Uri.parse("wss://botanique-7869187b5581.herokuapp.com/");
  }
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
    initialPage: NavigationConstants.pageNameToIndex(NavigationConstants.home),
  );

  bool _hasPushedWelcomeScreen = false;

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
      home: Builder(builder: (context) {
        if (!_hasPushedWelcomeScreen) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const WelcomeScreen()));
          });

          _hasPushedWelcomeScreen = true;
        }

        return Scaffold(
          backgroundColor: AppColors.background,
          body: BlocConsumer<WebSocketBloc, ServerEvent>(
            listener: (context, serverEvent) =>
                _handleGlobalEvents(context, serverEvent),
            builder: (context, state) =>
                BlocConsumer<NavigationCubit, NavigationState>(
              listener: _navigateToPage(_pageController),
              builder: _scaffoldBodyBuilder(context, _pageController, _screens),
            ),
          ),
          bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
            builder: (context, navigationState) {
              return AppNavbar(
                isHidden: navigationState.isNavBarHidden,
              );
            },
          ),
        );
      }),
    );
  }
}

Widget Function(BuildContext, NavigationState) _scaffoldBodyBuilder(
    BuildContext context, PageController pageController, List<Widget> screens) {
  return (context, state) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: ContentSizeHelper.getContentWidth(context),
        child: PageView(
          controller: pageController,
          children: screens,
        ),
      ),
    );
  };
}

Function(BuildContext, NavigationState) _navigateToPage(
    PageController pageController) {
  return (context, state) => {
        pageController.animateToPage(
          state.index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
        ),
      };
}

void _handleGlobalEvents(BuildContext context, ServerEvent serverEvent) {
  if (serverEvent is ServerAuthenticatesUser) {
    context.read<NavigationCubit>().changePage(NavigationConstants.home);
    Navigator.of(context).popUntil((route) => route.isFirst);
  } else if (serverEvent is ServerRespondsNotAuthenticated) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const AuthScreen(),
      ),
    );
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
  } else if (serverEvent is ServerSendsStats) {
    context.read<UserCubit>().setStats(serverEvent.stats);
  } else if (serverEvent is ServerSendsErrorMessage) {
    if (serverEvent is ServerRespondsNotFound &&
        serverEvent.error.contains("No conditions log")) {
      // This is handled in the actual screen
      return;
    }
    print("Error: ${serverEvent.error}");
    AppSnackbar(context).showError(serverEvent.error);
  } else if (serverEvent is ServerSendsUserInfo) {
    context.read<UserCubit>()
      ..updateUsername(serverEvent.getUserDto.username)
      ..setUserEmail(serverEvent.getUserDto.userEmail);
    if (serverEvent.getUserDto.blobUrl != null) {
      context.read<UserCubit>().updateBlobUrl(serverEvent.getUserDto.blobUrl!);
    }
    context.read<NavigationCubit>().changePage(NavigationConstants.home);
  }
}
