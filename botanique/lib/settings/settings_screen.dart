import 'package:botanique/models/enums/app_enums.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/settings/app_expansion_tile.dart';
import 'package:botanique/settings/collections/edit_collections_screen.dart';
import 'package:botanique/settings/image_update_screen.dart';
import 'package:botanique/settings/profile_settings_banner.dart';
import 'package:botanique/shared/app_card.dart';
import 'package:botanique/shared/app_snackbar.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/style/app_style.dart';
import 'package:botanique/util/navigation_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/buttons/app_button.dart';
import '../shared/buttons/app_icon_button.dart';
import '../util/content_size_helper.dart';
import 'panel_content/panel_item.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int openPanelId = -1;
  late List<PanelItem> panelItems;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatController =
      TextEditingController();

  @override
  void initState() {
    _buildPanelItems();
    super.initState();
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double diameter = ContentSizeHelper.getContentWidth(context) * 0.25;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: BlocBuilder<UserCubit, UserCubitState>(
        builder: (context, userState) {
          return ListView(
            children: [
              ProfileSettingsBanner(
                  diameter: diameter,
                  onEditTapped: () {
                    _handleOnImageEditTapped();
                  }),
              SizedBox(height: diameter * 0.55),
              AppText(
                text: userState.userDto.username ?? "My Profile",
                textAlign: TextAlign.center,
                fontSize: FontSizes.h3,
                fontWeight: FontWeight.bold,
              ),
              const AppText(
                text: "Superior plant lover!",
                textAlign: TextAlign.center,
              ),
              spacer,
              _buildStatsCard(diameter),
              spacerDouble,
              const AppText(
                text: "Settings",
                textAlign: TextAlign.center,
                fontSize: FontSizes.h4,
                fontWeight: FontWeight.bold,
              ),
              spacer,
              ...panelItems.map(
                (item) => AppExpansionTile(
                  item: item,
                  diameter: diameter,
                  tileToggleCallback: _handleTileToggle,
                ),
              ),
              spacer,
              Padding(
                padding: _getLargerSymmetricHorizontalPadding(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 4,
                      child: AppButton(
                        onPressed: () {
                          _handleOnManageCollectionsTapped();
                        },
                        text: "Manage Collections",
                      ),
                    ),
                    spacer,
                    Expanded(
                      flex: 1,
                      child: AppIconButton(
                        onPressed: () {
                          context.read<WebSocketBloc>().add(
                                ClientWantsToLogOut(
                                  eventType: "ClientWantsToLogOut",
                                ),
                              );
                          context
                              .read<NavigationCubit>()
                              .changePage(NavigationConstants.welcome);
                        },
                        icon: Icons.logout,
                        buttonType: ButtonType.warning,
                        buttonShape: ButtonShape.square,
                      ),
                    ),
                  ],
                ),
              ),
              spacer,
              Padding(
                padding: _getLargerSymmetricHorizontalPadding(),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(child: Divider(color: TextColors.textSecondary)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: AppText(
                        text: "About BotaniQue",
                        fontSize: FontSizes.h6,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(child: Divider(color: TextColors.textSecondary)),
                  ],
                ),
              ),
              Padding(
                padding: ContentSizeHelper.getSettingsContentPadding(context),
                child: const AppText(
                  text:
                      "Created by Wilhelmina, an all-women development team. We believe in empowering plant lovers and promoting sustainable living through innovative technology.",
                  overflow: TextOverflow.visible,
                  fontSize: FontSizes.small,
                  textAlign: TextAlign.center,
                ),
              ),
              spacerDouble,
            ],
          );
        },
      ),
    );
  }

  /* Methods */
  void _handleTileToggle(int id) {
    setState(() {
      if (openPanelId == id) {
        panelItems[id - 1].controller.collapse();
        openPanelId = -1;
      } else {
        if (openPanelId > 0) {
          panelItems[openPanelId - 1].controller.collapse();
        }
        panelItems[id - 1].controller.expand();
        openPanelId = id;
      }
    });
  }

  void _handleUpdateUsername(TextEditingController controller) {
    context
        .read<WebSocketBloc>()
        .add(ClientWantsToUpdateUsername(jwt: "", username: controller.text));
    controller.clear();
  }

  void _handleUpdatePassword(TextEditingController controller) {
    context
        .read<WebSocketBloc>()
        .add(ClientWantsToUpdatePassword(jwt: "", password: controller.text));
    controller.clear();
  }

  void _handleOnImageEditTapped() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const ImageUpdateScreen();
    }));
  }

  void _handleOnManageCollectionsTapped() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return EditCollectionsScreen();
    }));
  }

  /* Widgets */
  List<PanelItem> _buildPanelItems() {
    // TODO: validation
    return panelItems = <PanelItem>[
      PanelItem(
        id: 1,
        headerValue: 'Username',
        controller: ExpansionTileController(),
        panelContent: Column(
          children: [
            AppTextField(
              textFieldController: _usernameController,
              placeholder: "Enter new username",
              prefixIcon: const Icon(Icons.person),
            ),
            spacer,
            AppButton(
                onPressed: () {
                  if (_usernameController.text.isNotEmpty &&
                      _usernameController.text.length <= 51) {
                    _handleUpdateUsername(_usernameController);
                    _handleTileToggle(1);
                  } else {
                    AppSnackbar(context)
                        .showError("Can't be empty or exceed 50 characters");
                  }
                },
                text: "Submit")
          ],
        ),
      ),
      PanelItem(
        id: 2,
        headerValue: 'Password',
        controller: ExpansionTileController(),
        panelContent: Column(
          children: [
            AppTextField(
              textFieldController: _passwordController,
              placeholder: "Enter new password",
              prefixIcon: const Icon(Icons.password),
            ),
            spacer,
            AppTextField(
              textFieldController: _passwordRepeatController,
              placeholder: "Repeat new password",
              prefixIcon: const Icon(Icons.password),
            ),
            spacer,
            AppButton(
                onPressed: () {
                  if (_passwordController.text.isEmpty ||
                      _passwordRepeatController.text.isEmpty) {
                    AppSnackbar(context)
                        .showError("Please fill in both fields");
                    return;
                  } else if (_passwordController.text !=
                      _passwordRepeatController.text) {
                    AppSnackbar(context).showError("Passwords do not match");
                    return;
                  } else if (_passwordController.text.length < 8 ||
                      _passwordController.text.length > 256) {
                    AppSnackbar(context)
                        .showError("Must be between 8-256 characters");
                    return;
                  } else {
                    _handleUpdatePassword(_passwordController);
                    _handleTileToggle(2);
                  }
                },
                text: "Submit")
          ],
        ),
      ),
    ];
  }

  Widget _buildStatsCard(double diameter) {
    return Padding(
      padding: ContentSizeHelper.getSettingsContentPadding(context),
      child: AppCard(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: diameter * 0.08),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildStatsColumn("25", "plants total"),
              _buildStatsColumn("25", "happy plants"),
              _buildStatsColumn("5", "collections"),
            ],
          ),
        ),
      ),
    );
  }

  Column _buildStatsColumn(String number, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.numbers, color: AppColors.accent),
            AppText(text: number),
          ],
        ),
        const SizedBox(height: 4),
        AppText(text: text)
      ],
    );
  }

  EdgeInsets _getLargerSymmetricHorizontalPadding() {
    double sidePadding = MediaQuery.of(context).size.width * 0.08;
    return EdgeInsets.symmetric(
      horizontal: sidePadding,
    );
  }
}
