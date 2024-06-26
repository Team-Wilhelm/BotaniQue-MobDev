import 'package:botanique/shared/stepper/app_stepper.dart';
import 'package:flutter/material.dart';

import '../../style/app_style.dart';
import '../../util/content_size_helper.dart';
import '../app_text.dart';

class AppStepperProgress extends StatefulWidget {
  const AppStepperProgress(
      {super.key,
      required this.currentStepIndex,
      required this.totalSteps,
      required this.step});

  final int currentStepIndex;
  final int totalSteps;
  final AppStep step;

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
    if (widget.currentStepIndex != oldWidget.currentStepIndex) {
      _progressAnimation = Tween<double>(
        begin: oldWidget.currentStepIndex / oldWidget.totalSteps,
        end: widget.currentStepIndex / widget.totalSteps,
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
          height: _getProgressIndicatorSize(context) * 1.75,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
          decoration: BoxDecoration(
            color: AppColors.primary[0],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              _getProgressIndicator(),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppText(
                      text: widget.step.title,
                      colour: TextColors.textLight,
                    ),
                    AppText(
                      text: widget.step.subtitle ?? "",
                      colour: TextColors.textLight,
                      fontSize: FontSizes.tiny,
                      overflow: TextOverflow.visible,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  double _getProgressIndicatorSize(BuildContext context) {
    return ContentSizeHelper.getContentHeight(context) * 0.07;
  }

  Widget _getProgressIndicator() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: _getProgressIndicatorSize(context),
          width: _getProgressIndicatorSize(context),
          child: CircularProgressIndicator(
            value: _progressAnimation.value + (1 / widget.totalSteps),
            strokeWidth: 7,
            valueColor: AlwaysStoppedAnimation<Color>(
              AppColors.primary[40]!,
            ),
            backgroundColor: AppColors.primary[20]!,
          ),
        ),
        AppText(
          text: "${widget.currentStepIndex + 1}/${widget.totalSteps}",
          colour: TextColors.textLight,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _progressController.dispose();
    super.dispose();
  }
}
