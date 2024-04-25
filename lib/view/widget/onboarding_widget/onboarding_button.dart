import 'package:bas_fast/core/constant/color.dart';
import 'package:bas_fast/core/constant/route.dart';
import 'package:bas_fast/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () => {Get.offAllNamed(AppRoute.login)},
      color: AppColor.blue,
      minWidth: MediaQuery.of(context).size.width * 0.8,
      // height: MediaQuery.of(context).size.height * 0.05,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(67)),
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.07,
        // decoration:BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: const Text(
          "ابدأ الآن",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'IBMPlexSansArabic',
            color: AppColor.secandWhite,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
