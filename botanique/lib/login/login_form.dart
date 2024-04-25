import 'package:flutter/material.dart';

import '../shared/app_button.dart';
import '../shared/app_text_field.dart';
import '../utils/app_style.dart';

class LoginForm extends StatelessWidget {
  LoginForm({
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
          icon: const Icon(Icons.email),
          textInputType: TextInputType.emailAddress,
        ),
        spacer,
        AppTextField(
          textFieldController: _passwordController,
          placeholder: "Password",
          icon: const Icon(Icons.lock),
          textInputType:
              TextInputType.visiblePassword, // TODO: toggle when state is added
        ),
        spacer,
        AppButton(
          onPressed: () => {},
          text: "Login",
          fullWidth: true,
          // disabled: _emailController.text.isEmpty || _passwordController.text.isEmpty,
        ),
      ],
    );
  }
}
