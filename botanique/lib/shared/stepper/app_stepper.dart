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
    this.onStepContinue,
    this.onStepCancel,
    required this.steps,
    this.onFinish,
  });

  final VoidCallback? onStepContinue;
  final VoidCallback? onStepCancel;
  final VoidCallback? onFinish;
  final List<AppStep> steps;

  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  int _currentStep = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AppStepperProgress(
            currentStep: _currentStep,
            totalSteps: widget.steps.length,
            stepTitle: widget.steps[_currentStep].title,
          ),
          const SizedBox(height: 16),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  _currentStep = value;
                });
              },
              children: widget.steps
                  .map(
                    (step) => _buildStep(step),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStep(AppStep step) {
    return SingleChildScrollView(
      child: Column(
        children: [
          step.content,
          const SizedBox(height: 16),
          Row(
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
        ],
      ),
    );
  }

  void onContinuePressed() {
    if (_currentStep == widget.steps.length - 1) {
      return;
    }

    if (widget.onStepContinue != null) {
      widget.onStepContinue!();
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

    if (widget.onStepCancel != null) {
      widget.onStepCancel!();
    }

    _pageController.previousPage(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  void onFinishPressed() {
    if (widget.onFinish != null) {
      widget.onFinish!();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
