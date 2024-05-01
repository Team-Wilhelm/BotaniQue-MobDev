import 'package:botanique/shared/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_stepper_progress.dart';

class AppStep {
  const AppStep({
    required this.title,
    required this.content,
  });

  final String title;
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
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppStepperProgress(
          currentStep: _currentStep,
          totalSteps: widget.steps.length,
          stepTitle: widget.steps[_currentStep].title,
        ),
        const SizedBox(height: 24),
        Expanded(
          child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentStep = value;
                });
              },
              children: widget.steps
                  .map((step) => SingleChildScrollView(
                        child: step.content,
                      ))
                  .toList()),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (_currentStep > 0)
                AppButton(onPressed: onBackPressed, text: "Back"),
              const Spacer(),
              if (_currentStep < widget.steps.length - 1)
                AppButton(onPressed: onContinuePressed, text: "Next"),
              if (_currentStep == widget.steps.length - 1)
                AppButton(onPressed: onFinishPressed, text: "Finish")
            ],
          ),
        ),
      ],
    );
  }

  void onContinuePressed() {
    if (_currentStep == widget.steps.length - 1) {
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
    if (_currentStep == 0) {
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
