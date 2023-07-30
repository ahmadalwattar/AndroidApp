import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/auth/successresetpassword_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/view/widgets/auth/custom_button_auth.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControllerImp controller =
        Get.put(SuccessResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Success Reset Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontWeight: FontWeight.w600, color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primaryColor,
              ),
            ),
            const Text('......'),
            const Spacer(),
            CustomBtnAuth(
              textbtn: 'Go to Login',
              onPressed: () {
                controller.goToLogIn();
              },
            )
          ],
        ),
      ),
    );
  }
}
