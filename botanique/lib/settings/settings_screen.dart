import 'package:botanique/models/dtos/user/user_dto.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/settings/collections/edit_collections_screen.dart';
import 'package:botanique/settings/image_update_screen.dart';
import 'package:botanique/settings/profile_settings_banner.dart';
import 'package:botanique/shared/app_snackbar.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/state/user_cubit.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:botanique/util/navigation_constants.dart';
import 'package:flutter/material.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../shared/buttons/app_button.dart';
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

  //TODO get data for stats card
  //TODO deal with collections CRUD

  //TODO implement image picker

  @override
  Widget build(BuildContext context) {
    final double diameter = MediaQuery.of(context).size.width * 0.25;

    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: BlocConsumer<WebSocketBloc, ServerEvent>(
          listener: (context, state) {
            if (state is ServerRejectsUpdate) {
              AppSnackbar(context).showError(state.error);
            }
          },
          builder: (context, state) {
            return ListView(
              children: [
                ProfileSettingsBanner(
                    diameter: diameter,
                    onEditTapped: () {
                      _handleOnEditTapped();
                    }),
                SizedBox(height: diameter * 0.55),
                AppText(
                    text: context.read<UserCubit>().state.username ??
                        "My Profile",
                    textAlign: TextAlign.center,
                    fontSize: FontSizes.h3,
                    fontWeight: FontWeight.bold),
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
                    fontSize: FontSizes.h2,
                    fontWeight: FontWeight.bold),
                spacer,
                ...panelItems
                    .map((item) => _buildExpansionTile(item, diameter)),
                spacer,
                Padding(
                  padding: _getSymmetricHorizontalPadding(),
                  child:
                      AppButton(onPressed: () {_handleOnManageCollectionsTapped();}, text: "Manage Collections"),
                ),
                Padding(
                  padding: _getSymmetricHorizontalPadding(),
                  child: AppButton(
                      onPressed: () {
                        context.read<WebSocketBloc>().add(ClientWantsToLogOut(
                            email:
                                context.read<UserCubit>().state.userEmail ?? "", //TODO handle the case when email is null
                            eventType: "ClientWantsToLogOut"));
                        context
                            .read<NavigationCubit>()
                            .changePage(NavigationConstants.welcome);
                        context.read<UserCubit>().reset();
                      },
                      text: "Log Out"),
                )
              ],
            );
          },
        ));
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

  void _handleSubmit(TextEditingController controller, FieldType fieldType) {
    final cubit = context.read<UserCubit>();

    if (fieldType == FieldType.username) {
      cubit.updateUsername(controller.text);
    } else if (fieldType == FieldType.password) {
      cubit.updatePassword(controller.text);
    }

    var userDto = cubit.state;
    context.read<WebSocketBloc>().add(ClientWantsToUpdateProfile(
        jwt: '', userDto: userDto, eventType: "ClientWantsToUpdateProfile"));
    controller.clear();
    _handleTileToggle(openPanelId);
  }

  void _handleOnEditTapped() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ImageUpdateScreen();
    }));
  }

  void _handleOnManageCollectionsTapped() {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return EditCollectionsScreen();
    }));
  }

  /* Widgets */
  List<PanelItem> _buildPanelItems() {
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
                    _handleSubmit(_usernameController, FieldType.username);
                    _handleTileToggle(1);
                  } else {
                    AppSnackbar(context)
                        .showError("Must be between 1-50 characters");
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
                  if ((_passwordController.text ==
                          _passwordRepeatController.text) &&
                      _passwordController.text.length >= 8 &&
                      _passwordController.text.length <= 256) {
                    _handleSubmit(_passwordController, FieldType.password);
                    _handleTileToggle(2);
                  } else {
                    AppSnackbar(context)
                        .showError("Must be between 8-256 characters");
                  }
                },
                text: "Submit")
          ],
        ),
      ),
    ];
  }

  Card _buildStatsCard(double diameter) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: diameter * 0.24),
      child: Padding(
        padding: EdgeInsets.all(diameter * 0.16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStatsColumn("25", "plants total"),
            _buildStatsColumn("25", "happy plants"),
            _buildStatsColumn("5", "collections"),
          ],
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

  Widget _buildExpansionTile(PanelItem item, double diameter) {
    return Padding(
      padding: _getSymmetricHorizontalPadding(),
      child: Card(
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            controller: item.controller,
            tilePadding: EdgeInsets.symmetric(
                horizontal: diameter * 0.24, vertical: diameter * 0.08),
            childrenPadding: EdgeInsets.symmetric(
                horizontal: diameter * 0.16, vertical: diameter * 0.08),
            initiallyExpanded: false,
            iconColor: AppColors.accent,
            title: AppText(
                text: item.headerValue,
                fontSize: FontSizes.h4,
                fontWeight: FontWeight.bold),
            onExpansionChanged: (bool expanded) => _handleTileToggle(item.id),
            children: [
              item.panelContent,
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets _getSymmetricHorizontalPadding() {
    double sidePadding = MediaQuery.of(context).size.width * 0.05;
    return EdgeInsets.symmetric(
      horizontal: sidePadding,
    );
  }
}
