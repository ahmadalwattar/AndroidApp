import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';

abstract class ForgetPasswordController extends GetxController {
  ckeckEmail();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>(); //validator

  late TextEditingController email;

  @override
  ckeckEmail() {}

  @override
  goToVerifyCode() {
    if (formstate.currentState!.validate()) {
      //validator
      Get.offNamed(AppRoutes.verifyCode); //Route
      Get.delete<ForgetPasswordControllerImp>(); //Empty Forms
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}
