import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';

abstract class ResetPasswordController extends GetxController {
  resetpassword();
  goToSuccessRestetPassword();
  showPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>(); // validator
  bool isShowPassword = true; //show password
  late TextEditingController password;
  late TextEditingController repassword;

  @override
  resetpassword() {}

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  goToSuccessRestetPassword() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(AppRoutes.successResetPassword);
      Get.delete<ResetPasswordControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
