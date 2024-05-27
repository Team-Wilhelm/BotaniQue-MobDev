import 'package:botanique/shared/app_text.dart';
import 'package:botanique/style/app_style.dart';
import 'package:flutter/material.dart';

class AppSnackbar {
  final BuildContext context;

  AppSnackbar(this.context);

  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: AppText(
            text: message,
            fontSize: FontSizes.regular,
            colour: TextColors.textLight,
          ),
        ),
        backgroundColor: AppColors.error,
        behavior: SnackBarBehavior.floating, // Optional: to float the snackbar
        duration: Duration(seconds: 4), // Optional: adjust the display duration
      ),
    );
  }

  void showSuccess(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Center(
          child: AppText(
            text: message,
            fontSize: FontSizes.regular,
            colour: TextColors.textLight,
          ),
        ),
        backgroundColor: AppColors.primary[60],
        behavior: SnackBarBehavior.floating, // Optional: to float the snackbar
        duration: Duration(seconds: 4), // Optional: adjust the display duration
      ),
    );
  }
}