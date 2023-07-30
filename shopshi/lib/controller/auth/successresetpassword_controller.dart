import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';

abstract class SuccessResetPasswordController extends GetxController {
  goToLogIn();
}

class SuccessResetPasswordControllerImp extends SuccessResetPasswordController {
  @override
  goToLogIn() {
    Get.offNamed(AppRoutes.logIn);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
