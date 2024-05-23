import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../shared/app_text.dart';
import '../state/navigation_cubit.dart';

class AuthBottomText extends StatelessWidget {
  const AuthBottomText({
    super.key,
    required this.isSignUp,
    this.onTap,
  });

  final bool isSignUp;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(text: _getFirstSentence()),
        TextButton(
          onPressed: () => {
            context.read<NavigationCubit>().toggleSignUpScreen(),
          },
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(
                Theme.of(context).colorScheme.primary.withOpacity(0.1)),
          ),
          child: GestureDetector(
            onTap: onTap,
            child: AppText(
              text: _getSecondSentence(),
              colour: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }

  String _getFirstSentence() {
    return isSignUp ? "Already have an account?" : "Don't have an account?";
  }

  String _getSecondSentence() {
    return isSignUp ? "Log in" : "Sign up";
  }
}
