import 'package:botanique/shared/app_text.dart';
import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: welcomeScreenBackground,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppText(
              text: 'Welcome to BotaniQue',
              fontPercentage: TextSizes.h1,
              fontWeight: FontWeight.bold,
            ),
            const AppText(
              text: 'Your personal plant whisperer',
              fontPercentage: TextSizes.h4,
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
                onPressed: () => {
                      Navigator.pushNamed(context, "/login"),
                    },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 5,
                        vertical: 8)),
                child: const AppText(
                  text: 'Sign in',
                  fontPercentage: TextSizes.h4,
                  colour: TextColors.textLight,
                  fontWeight: FontWeight.bold,
                )),
            spacer,
            const AppText(
                text: 'Create an account', fontPercentage: TextSizes.h5),
            spacer,
            const AppText(
              text: 'Forgot password?',
              fontPercentage: TextSizes.regular,
              colour: TextColors.textSecondary,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
