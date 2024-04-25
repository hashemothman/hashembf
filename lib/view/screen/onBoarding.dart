import 'package:bas_fast/controller/onboarding_controller.dart';
import 'package:bas_fast/core/constant/color.dart';
import 'package:bas_fast/data/dataResorce/static/static.dart';
import 'package:bas_fast/view/widget/onboarding_widget/onboardig_slider_liner.dart';
import 'package:bas_fast/view/widget/onboarding_widget/onboarding_button.dart';
import 'package:bas_fast/view/widget/onboarding_widget/onboarding_exit_button.dart';
import 'package:bas_fast/view/widget/onboarding_widget/onboarding_next_button.dart';
import 'package:bas_fast/view/widget/onboarding_widget/onboarding_slider_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingControllerImp());
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          OnboardingExitButton(),
          OnboardingSliderPage(),
          Expanded(
              // flex: 2,
              child: Container(
                  height: 100,
                  width: double.infinity,
                  margin: EdgeInsets.only(right: 20, left: 20),
                  child: GetBuilder<OnBoardingControllerImp>(
                      builder: (controller) => Row(
                            textDirection: TextDirection.rtl,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: controller.currentPage != 2
                                ? [
                                    OnboardigSliderLiner(
                                      pageController: controller.pageController,
                                    ),
                                    OnboardingNextButton(),
                                    // OnboardingButton()
                                  ]
                                : [OnboardingButton()],
                          )))),
        ],
      )),
    );
  }
}
