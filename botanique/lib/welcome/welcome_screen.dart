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
          Text('Welcome to BotaniQue', style: styleText(textDark, textH1, context)),
          Text('Your personal plant whisperer',
              style: styleText(textDark, textH4, context)),
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
                      horizontal: MediaQuery.of(context).size.width / 6, vertical: 8)),
              child: Text('Sign in', style: styleText(textLight, textH2, context))),
          spacer,
          Text(
            'Create an account',
            style: styleText(textDark, textH3, context),
          ),
          spacer,
          Text(
            'Forgot password?',
            style: styleText(texSecondary, textSmall, context),
          )
        ],
      ),
    );
  }

  TextStyle styleText(Color colour, double fontPercentage, BuildContext context) {
    var fontSize = MediaQuery.of(context).size.width / fontPercentage;
    return TextStyle(color: colour, fontSize: fontSize, fontWeight: FontWeight.bold);
  }
}
