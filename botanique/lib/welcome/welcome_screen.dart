import 'package:botanique/shared/app_text.dart';
import 'package:botanique/state/navigation_cubit.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../util/navigation_constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.welcomeScreenBackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppText(
              text: 'Welcome to BotaniQue',
              fontSize: FontSizes.h1,
              fontWeight: FontWeight.bold,
            ),
            const AppText(
              text: 'Your personal plant whisperer',
              fontSize: FontSizes.h4,
              fontWeight: FontWeight.bold,
            ),
            spacer,
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              child: Lottie.network(
                  'https://lottie.host/bb24e446-457b-4a11-9ee1-238202f7b46d/nZCAZvKzWr.json',
                  repeat: false),
            ),
            spacer,
            ElevatedButton(
                onPressed: () => context
                    .read<NavigationCubit>()
                    .changePage(NavigationConstants.logIn),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 5,
                        vertical: 8)),
                child: const AppText(
                  text: 'Log In',
                  fontSize: FontSizes.h4,
                  colour: TextColors.textLight,
                  fontWeight: FontWeight.bold,
                )),
            spacer,
            const AppText(text: 'Create an account', fontSize: FontSizes.h5),
            spacer,
            const AppText(
              text: 'Forgot password?',
              fontSize: FontSizes.regular,
              colour: TextColors.textSecondary,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
