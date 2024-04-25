import 'package:botanique/login/login_form.dart';
import 'package:botanique/shared/app_logo.dart';
import 'package:botanique/shared/app_text.dart';
import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
            LoginForm(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppText(text: "Don't have an account?"),
                  TextButton(
                    onPressed: () => {},
                    child: const AppText(
                      text: "Sign Up",
                      colour: primary,
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
