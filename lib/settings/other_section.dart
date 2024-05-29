import 'package:botanique/shared/app_card.dart';
import 'package:botanique/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/events/client_events.dart';
import '../shared/app_text.dart';
import '../shared/buttons/app_button.dart';
import '../state/web_socket_bloc.dart';
import '../style/app_style.dart';
import 'collections/edit_collections_screen.dart';

class OtherSettingsSection extends StatelessWidget {
  const OtherSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppText(
          text: "Other",
          fontSize: FontSizes.h5,
          fontWeight: FontWeight.bold,
        ),
        const SizedBox(height: 4),
        AppCard(
          border: Border.all(
            color: AppColors.cardBackground.withOpacity(0.7),
            width: 2,
          ),
          color: AppColors.background,
          padding: EdgeInsets.zero,
          child: AppButton(
            leadingIcon: Icons.collections,
            onPressed: () => _handleOnManageCollectionsTapped(context),
            text: "Manage Collections",
            style: _settingsScreenButtonStyle,
            contentColor: TextColors.textDark,
          ),
        ),
        const SizedBox(height: 8),
        AppCard(
          border: Border.all(
            color: AppColors.cardBackground.withOpacity(0.7),
            width: 2,
          ),
          color: AppColors.background,
          padding: EdgeInsets.zero,
          child: AppButton(
            text: "Log Out",
            onPressed: () => _logOut(context),
            leadingIcon: Icons.logout,
            style: _settingsScreenButtonStyle,
            contentColor: TextColors.textDark,
          ),
        ),
      ],
    );
  }

  void _handleOnManageCollectionsTapped(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const EditCollectionsScreen();
    }));
  }

  void _logOut(BuildContext context) {
    context.read<WebSocketBloc>().add(
          ClientWantsToLogOut(
            eventType: "ClientWantsToLogOut",
          ),
        );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const WelcomeScreen(),
      ),
    );
  }

  ButtonStyle get _settingsScreenButtonStyle {
    return ButtonStyle(
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
      elevation: MaterialStateProperty.all<double>(0),
    );
  }
}
