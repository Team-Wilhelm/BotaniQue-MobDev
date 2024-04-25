import 'package:botanique/auth/sign_up_form.dart';
import 'package:flutter/material.dart';

import '../shared/app_logo.dart';
import '../shared/app_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: getEdgeInsets(context),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: AppLogo(),
            ),
            SignUpForm(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppText(text: "Already have an account?"),
                  TextButton(
                    onPressed: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, "/login"),
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.1)),
                    ),
                    child: AppText(
                      text: "Log In",
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
