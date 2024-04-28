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

  @override
  Widget build(BuildContext context) {
    final step = widget.steps[_currentStep];
    return SingleChildScrollView(
      child: Column(
        children: [
          AppStepperProgress(
            currentStep: _currentStep,
            totalSteps: widget.steps.length,
            stepTitle: step.title,
          ),
          const SizedBox(height: 16),
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
    setState(() {
      _currentStep = _currentStep == widget.steps.length - 1
          ? _currentStep
          : _currentStep + 1;
    });
    if (widget.onStepContinue != null) {
      widget.onStepContinue!();
    }
  }

  void onBackPressed() {
    setState(() {
      _currentStep = _currentStep == 0 ? 0 : _currentStep - 1;
    });

    if (widget.onStepCancel != null) {
      widget.onStepCancel!();
    }
  }

  void onFinishPressed() {
    if (widget.onFinish != null) {
      widget.onFinish!();
    }
  }
}
