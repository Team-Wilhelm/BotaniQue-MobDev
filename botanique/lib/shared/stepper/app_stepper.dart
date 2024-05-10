import 'package:botanique/shared/buttons/app_button.dart';
import 'package:botanique/shared/buttons/app_icon_button.dart';
import 'package:flutter/material.dart';

import 'app_stepper_progress.dart';

class AppStep {
  const AppStep({
    required this.title,
    this.subtitle,
    required this.content,
  });

  final String title;
  final String? subtitle;
  final Widget content;
}

class AppStepper extends StatefulWidget {
  const AppStepper({
    super.key,
    this.onNextPressed,
    this.onBackPressed,
    required this.steps,
    this.onFinishPressed,
  });

  final VoidCallback? onNextPressed;
  final VoidCallback? onBackPressed;
  final VoidCallback? onFinishPressed;
  final List<AppStep> steps;

  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  final PageController _pageController = PageController();
  int _currentStepIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppStepperProgress(
          currentStepIndex: _currentStepIndex,
          totalSteps: widget.steps.length,
          step: widget.steps[_currentStepIndex],
        ),
        const SizedBox(height: 24),
        Expanded(
          child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentStepIndex = value;
                });
              },
              children: widget.steps
                  .map((step) => SingleChildScrollView(
                        child: step.content,
                      ))
                  .toList()),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(
            8,
            8,
            8,
            24,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_currentStepIndex > 0)
                AppIconButton(
                  onPressed: onBackPressed,
                  icon: Icons.arrow_back_ios_new_rounded,
                ),
              const Spacer(),
              if (_currentStepIndex < widget.steps.length - 1)
                AppIconButton(
                    onPressed: onContinuePressed,
                    icon: Icons.arrow_forward_ios_rounded),
              if (_currentStepIndex == widget.steps.length - 1)
                AppButton(onPressed: onFinishPressed, text: "Save")
            ],
          ),
        ),
      ],
    );
  }

  void onContinuePressed() {
    if (_currentStepIndex == widget.steps.length - 1) {
      return;
    }

    if (widget.onNextPressed != null) {
      widget.onNextPressed!();
    }

    _pageController.nextPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void onBackPressed() {
    if (_currentStepIndex == 0) {
      return;
    }

    if (widget.onBackPressed != null) {
      widget.onBackPressed!();
    }

    _pageController.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void onFinishPressed() {
    if (widget.onFinishPressed != null) {
      widget.onFinishPressed!();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
