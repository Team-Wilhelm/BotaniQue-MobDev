import 'package:botanique/shared/app_text.dart';
import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const AppText(
            text: 'Welcome to BotaniQue',
            fontPercentage: textH1,
            fontWeight: FontWeight.bold,
          ),
          const AppText(
            text: 'Your personal plant whisperer',
            fontPercentage: textH4,
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
              onPressed: () => {},
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 5,
                      vertical: 8)),
              child: const AppText(
                text: 'Sign in',
                fontPercentage: textH4,
                colour: textLight,
                fontWeight: FontWeight.bold,
              )),
          spacer,
          const AppText(text: 'Create an account', fontPercentage: textH5),
          spacer,
          const AppText(
            text: 'Forgot password?',
            fontPercentage: textSmall,
            colour: textSecondary,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
