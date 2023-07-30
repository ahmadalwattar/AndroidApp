import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';
import 'package:shopshi/core/services/services.dart';
import 'package:shopshi/data/datasource/static/static.dart';

abstract class OnBoardingController extends GetxController {
  next();
  onPageChanged(int index);
}

class OnBoardingControllerImp extends OnBoardingController {
  late PageController pageController;
  int currentPage = 0;

  MyServices myServices = Get.find(); // for middleware

  @override
  next() {
    currentPage++;
    if (currentPage >= onBoardingList.length) {
      myServices.sharedPreferences
          .setString('onboarding', '1'); // for middleware
      Get.offAllNamed(AppRoutes.logIn);
    } else {
      pageController.animateToPage(currentPage,
          duration: const Duration(milliseconds: 800), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChanged(int index) {
    currentPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
