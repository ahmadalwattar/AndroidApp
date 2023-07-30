import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/class/statusrequest.dart';
import 'package:shopshi/core/constant/routes.dart';
import 'package:shopshi/core/functions/handlingdata.dart';
import 'package:shopshi/data/datasource/remote/auth/signupdata.dart';

abstract class SignUpController extends GetxController {
  SignUp();
  goToSignIn();
  showPassword();
}

class SignUpControllerImp extends SignUpController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>(); //for valid

  late TextEditingController username;
  late TextEditingController email;
  late TextEditingController phone;
  late TextEditingController password;

  //show password
  bool isShowPassword = true;

  //for data
  late StatusRequest statusRequest ;
  SignupData signupData = SignupData(Get.find());
  List data = []; 

  @override
  SignUp() async {
    if (formstate.currentState!.validate()) {
    //data
      statusRequest = StatusRequest.loading;
    var response = await signupData.postData(username.text,password.text,email.text,phone.text);
    print('============ controller $response');
    statusRequest = handlingData(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == 'success') {
        // data.addAll(response['data']);
        Get.offNamed(AppRoutes.verifyCodeSignUp);
      } else {
        Get.defaultDialog(title: 'Warning', middleText: 'Email or Phone number already exists');
        statusRequest = StatusRequest.failure;
      }
    }
    //
      
      Get.delete<SignUpControllerImp>();
    } else {
      print("Not Valid");
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(AppRoutes.logIn);
  }  

  @override
  showPassword() {
    isShowPassword = isShowPassword == true ? false : true;
    update();
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    username.dispose();
    email.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
}
