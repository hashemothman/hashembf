import 'package:bas_fast/controller/onboarding_controller.dart';
import 'package:bas_fast/core/constant/color.dart';
import 'package:bas_fast/data/dataResorce/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingSliderPage extends GetView<OnBoardingControllerImp> {
  const OnboardingSliderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.6,
        child: PageView.builder(
          controller: controller.pageController,
          onPageChanged: (value) {
            controller.onPageChange(value);
          },
          reverse: true,
          itemCount: onboardingList.length,
          itemBuilder: (context, i) => Column(
            children: [
              Image.asset(
                onboardingList[i].image!,
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.35,
              ),
              Text(
                onboardingList[i].title!,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    onboardingList[i].body!,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.bodyText1,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
