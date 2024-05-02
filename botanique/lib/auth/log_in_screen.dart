import 'package:botanique/auth/log_in_form.dart';
import 'package:botanique/models/events/server_events.dart';
import 'package:botanique/shared/app_logo.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/navigation_cubit.dart';
import '../util/navigation_constants.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<WebSocketBloc, ServerEvent>(
      listener: (context, state) {
        if (state is ServerAuthenticatesUser) {
          context.read<NavigationCubit>().changePage(NavigationConstants.home);
        } else if (state is ServerRejectsWrongCredentials) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: AppText(
            text: state.error,
          )));
        }
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: Padding(
            padding: getEdgeInsets(context),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topCenter,
                  child: AppLogo(),
                ),
                const LogInForm(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const AppText(text: "Don't have an account?"),
                      TextButton(
                        onPressed: () => {
                          context
                              .read<NavigationCubit>()
                              .changePage(NavigationConstants.signUp)
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                              Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.1)),
                        ),
                        child: AppText(
                          text: "Sign Up",
                          colour: Theme.of(context).colorScheme.primary,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  EdgeInsets getEdgeInsets(BuildContext context) {
    double sidePadding = MediaQuery.of(context).size.width * 0.1;
    double topPadding = MediaQuery.of(context).size.height * 0.1;
    double bottomPadding = MediaQuery.of(context).size.height * 0.05;

    return EdgeInsets.fromLTRB(
        sidePadding, topPadding, sidePadding, bottomPadding);
  }
}
