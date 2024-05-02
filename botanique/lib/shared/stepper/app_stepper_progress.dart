import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import '../app_text.dart';

class AppStepperProgress extends StatefulWidget {
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
  State<AppStepperProgress> createState() => _AppStepperProgressState();
}

class _AppStepperProgressState extends State<AppStepperProgress>
    with SingleTickerProviderStateMixin {
  late AnimationController _progressController;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();
    _progressController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _progressAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _progressController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void didUpdateWidget(AppStepperProgress oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentStep != oldWidget.currentStep) {
      _progressAnimation = Tween<double>(
        begin: oldWidget.currentStep / oldWidget.totalSteps,
        end: widget.currentStep / widget.totalSteps,
      ).animate(_progressController);
      _progressController.forward(from: 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _progressController,
      builder: (context, child) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
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
                        value:
                            _progressAnimation.value + (1 / widget.totalSteps),
                        strokeWidth: 7,
                      ),
                    ),
                    AppText(
                      text: "${widget.currentStep + 1}/${widget.totalSteps}",
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(text: widget.stepTitle),
                  if (widget.currentStep == widget.totalSteps - 1)
                    const AppText(
                      text: "Almost there!",
                      fontSize: FontSizes.tiny,
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  double _getProgressIndicatorSize(BuildContext context) {
    return MediaQuery.of(context).size.height * 0.07;
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }
}
