import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';

abstract class SuccessSignUpController extends GetxController {
  goToLogIn();
}

class SuccessSignUpControllerImp extends SuccessSignUpController {
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
