import 'package:botanique/models/dtos/auth/log_in_dto.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_button.dart';
import '../shared/app_text_field.dart';
import '../style/app_style.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({
    super.key,
  });

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isButtonDisabled = true;
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _emailController.addListener(_updateButtonState);
    _passwordController.addListener(_updateButtonState);
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      _isButtonDisabled =
          _emailController.text.isEmpty || _passwordController.text.isEmpty;
    });
  }

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
          suffixIcon: IconButton(
            icon: _isPasswordVisible
                ? const Icon(Icons.visibility_off)
                : const Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                _isPasswordVisible = !_isPasswordVisible;
              });
            },
          ),
          textInputType: _isPasswordVisible
              ? TextInputType.visiblePassword
              : TextInputType.text,
        ),
        spacer,
        AppButton(
          onPressed: () {
            final LoginDto loginDto = LoginDto(
              email: _emailController.text,
              password: _passwordController.text,
            );
            context.read<WebSocketBloc>().add(
                  ClientWantsToLogIn(
                      loginDto: loginDto, eventType: "ClientWantsToLogIn"),
                );
          },
          text: "Log In",
          fullWidth: true,
          disabled: _isButtonDisabled,
        ),
      ],
    );
  }
}
