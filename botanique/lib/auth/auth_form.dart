import 'package:botanique/auth/auth_bottom_text.dart';
import 'package:botanique/models/auth/log_in_dto.dart';
import 'package:botanique/models/events/client_events.dart';
import 'package:botanique/state/web_socket_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_text_field.dart';
import '../shared/buttons/app_button.dart';
import '../state/navigation_cubit.dart';
import '../style/app_style.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key,
    required this.isSignUp,
  });

  final bool isSignUp;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _emailController =
      TextEditingController();
  final _passwordController = TextEditingController();
  final _repeatPasswordController = TextEditingController();
  final _userNameController = TextEditingController();

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
    _repeatPasswordController.dispose();
    _userNameController.dispose();
    super.dispose();
  }

  void _updateButtonState() {
    setState(() {
      _isButtonDisabled =
          _emailController.text.isEmpty || _passwordController.text.isEmpty;
    });
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final navigationCubit = context.read<NavigationCubit>();
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextField(
                  textFieldController: _emailController,
                  placeholder: "Email",
                  prefixIcon: const Icon(Icons.email),
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter an email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                ),
                spacer,
                AppTextField(
                  textFieldController: _passwordController,
                  placeholder: "Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: _passwordSuffixIcon,
                  textInputType: _passwordInputType,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    } else if (value.length > 256) {
                      return 'Password must be less than 256 characters';
                    }
                    return null;
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(256),
                  ],
                ),
                if (widget.isSignUp) ...[
                  spacer,
                  AppTextField(
                    textFieldController: _repeatPasswordController,
                    placeholder: "Repeat Password",
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: _passwordSuffixIcon,
                    textInputType: _passwordInputType,
                    validator: (value) {
                      if (widget.isSignUp &&
                          _passwordController.text !=
                              _repeatPasswordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  spacer,
                  AppTextField(
                    prefixIcon: const Icon(Icons.person),
                    textFieldController: _userNameController,
                    placeholder: "Enter username",
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(50),
                    ],
                  ),
                ],
                const Spacer(),
                spacer,
                AppButton(
                  onPressed: widget.isSignUp ? onSignUpPressed : onLoginPressed,
                  text: widget.isSignUp ? "Sign Up" : "Log In",
                  fullWidth: true,
                  disabled: _isButtonDisabled,
                ),
                AuthBottomText(
                  isSignUp: widget.isSignUp,
                  onTap: () {
                    navigationCubit.toggleSignUpScreen();
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void onLoginPressed() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }

    final LoginDto loginDto = LoginDto(
      email: _emailController.text,
      password: _passwordController.text,
    );
    context.read<WebSocketBloc>().add(
          ClientWantsToLogIn(
              loginDto: loginDto, eventType: "ClientWantsToLogIn"),
        );
  }

  void onSignUpPressed() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }

    final RegisterUserDto registerUserDto = RegisterUserDto(
      email: _emailController.text,
      password: _passwordController.text,
      username: _userNameController.text,
    );
    context.read<WebSocketBloc>().add(
          ClientWantsToSignUp(
            registerUserDto: registerUserDto,
          ),
        );
  }

  Icon get _passwordVisibilityIcon {
    return _isPasswordVisible
        ? const Icon(Icons.visibility)
        : const Icon(Icons.visibility_off);
  }

  TextInputType get _passwordInputType {
    return _isPasswordVisible
        ? TextInputType.visiblePassword
        : TextInputType.text;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  IconButton get _passwordSuffixIcon => IconButton(
        icon: _passwordVisibilityIcon,
        onPressed: _togglePasswordVisibility,
      );
}
