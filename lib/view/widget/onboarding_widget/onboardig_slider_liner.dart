import 'package:bas_fast/controller/onboarding_controller.dart';
import 'package:bas_fast/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnboardigSliderLiner extends StatelessWidget {
  final PageController pageController;
  const OnboardigSliderLiner({required this.pageController, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
      builder: (controller) => Expanded(
        child: StepProgressIndicator(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          totalSteps: 100,
          currentStep: controller.currentPage == 0 ? 50 : 25,
          size: 12,
          padding: 0,
          selectedColor: AppColor.secandWhite,
          unselectedColor: AppColor.blue,
          roundedEdges: const Radius.circular(10),
        ),
      ),
    );
  }
}
