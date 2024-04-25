import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChange(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late final PageController pageController;
  int currentPage = 0;

  @override
  void onInit() {
    pageController = PageController(initialPage: currentPage);
    super.onInit();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }

  @override
  next() {
    currentPage++;
    pageController.animateToPage(
      currentPage,
      duration: const Duration(milliseconds: 900),
      curve: Curves.easeInOut,
    );
  }

  @override
  onPageChange(int index) {
    currentPage = index;
    update();
  }
}
