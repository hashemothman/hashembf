import 'package:bas_fast/core/constant/route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingExitButton extends StatelessWidget {
  const OnboardingExitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 10),
      child: TextButton(
          onPressed: () {
            Get.offAllNamed(AppRoute.login);
          },
          child: const Text(
            'تخطي',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'IBMPlexSansArabic',
            ),
          )),
    );
  }
}
