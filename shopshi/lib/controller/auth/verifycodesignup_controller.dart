import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';

abstract class VerifyCodeSignUpController extends GetxController {
  ckeckCode();
  goToSuccessSignUp();
}

class VerifyCodeSignUpControllerImp extends VerifyCodeSignUpController {
  late String verfiycode;

  @override
  ckeckCode() {}

  @override
  goToSuccessSignUp() {
    Get.toNamed(AppRoutes.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

  // @override
  // void dispose() {
  //   super.dispose();
  // }
}
