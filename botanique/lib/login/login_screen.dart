import 'package:botanique/shared/app_button.dart';
import 'package:botanique/shared/app_text_field.dart';
import 'package:botanique/utils/app_style.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 8, 40, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppTextField(
              textFieldController: _emailController,
              placeholder: "Email",
              textInputType: TextInputType.emailAddress,
            ),
            spacer,
            AppTextField(
              textFieldController: _passwordController,
              placeholder: "Password",
              textInputType: TextInputType.visiblePassword,
            ),
            spacer,
            AppButton(
              onPressed: () => {},
              text: "Login",
              // disabled: _emailController.text.isEmpty || _passwordController.text.isEmpty,
            ),
          ],
        ),
      ),
    );
  }
}
