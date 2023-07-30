import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';

abstract class VerifyCodeController extends GetxController {
  ckeckCode();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verfiycode;

  @override
  ckeckCode() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoutes.resetPassword);
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
