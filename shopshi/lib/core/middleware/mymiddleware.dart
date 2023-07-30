import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';
import 'package:shopshi/core/services/services.dart';

class MyMiddleWare extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices myServices = Get.find(); // for middleware

  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString("onboarding") == "1") {
      print('OnBoarding Finish');
      return const RouteSettings(name: AppRoutes.logIn);
    }
  }
}
