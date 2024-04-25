import 'package:flutter/material.dart';

import '../shared/app_button.dart';
import '../shared/app_text_field.dart';
import '../utils/app_style.dart';

class SignUpForm extends StatelessWidget {
  SignUpForm({
    super.key,
  });

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextField(
          textFieldController: _emailController,
          placeholder: "Email",
          prefixIcon: const Icon(Icons.email),
          textInputType: TextInputType.emailAddress,
        ),
        spacer,
        AppTextField(
          textFieldController: _passwordController,
          placeholder: "Password",
          prefixIcon: const Icon(Icons.lock),
          textInputType:
              TextInputType.visiblePassword, // TODO: toggle when state is added
        ),
        spacer,
        AppTextField(
          textFieldController: _passwordController,
          placeholder: "Repeat Password",
          prefixIcon: const Icon(Icons.lock),
          textInputType:
              TextInputType.visiblePassword, // TODO: toggle when state is added
        ),
        spacer,
        AppButton(
          onPressed: () => {
            Navigator.pushNamed(context, "/home"), // TODO: review
          },
          text: "Sign Up",
          fullWidth: true,
          // disabled: _emailController.text.isEmpty || _passwordController.text.isEmpty,
        ),
      ],
    );
  }
}
