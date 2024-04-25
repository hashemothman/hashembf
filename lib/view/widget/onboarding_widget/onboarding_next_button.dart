import 'package:bas_fast/controller/onboarding_controller.dart';
import 'package:bas_fast/core/constant/color.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingNextButton extends GetView<OnBoardingControllerImp> {
  const OnboardingNextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 70, left: 20),
      child: InkWell(
        onTap: () {
          controller.next();
        },
        child: Ink(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColor.blue,
          ),
          padding: const EdgeInsets.all(10),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
