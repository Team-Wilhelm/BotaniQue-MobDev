import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import '../app_text.dart';

class AppStepperProgress extends StatelessWidget {
  const AppStepperProgress({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.stepTitle,
  });

  final int currentStep;
  final int totalSteps;
  final String stepTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: _getProgressIndicatorSize(context),
                width: _getProgressIndicatorSize(context),
                child: CircularProgressIndicator.adaptive(
                  value: (currentStep + 1) / totalSteps,
                ),
              ),
              AppText(
                text: "${currentStep + 1}/${totalSteps}",
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(text: stepTitle),
            if (currentStep == totalSteps - 1)
              const AppText(
                text: "Almost there!",
                fontSize: FontSizes.tiny,
              ),
          ],
        ),
      ],
    );
  }

  double _getProgressIndicatorSize(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.07;
  }
}
