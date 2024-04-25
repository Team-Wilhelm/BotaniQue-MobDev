import 'package:botanique/auth/log_in_form.dart';
import 'package:botanique/shared/app_logo.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: getEdgeInsets(context),
        child: Stack(
          children: [
            const Align(
              alignment: Alignment.topCenter,
              child: AppLogo(),
            ),
            LogInForm(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppText(text: "Don't have an account?"),
                  TextButton(
                    onPressed: () => {
                      Navigator.pop(context),
                      Navigator.pushNamed(context, "/signup"),
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Theme.of(context)
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
