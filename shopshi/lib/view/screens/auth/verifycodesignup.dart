import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/auth/verifycode_controller.dart';
import 'package:shopshi/controller/auth/verifycodesignup_controller.dart';
import 'package:shopshi/core/constant/color.dart';

class VerifyCodeSignUp extends StatelessWidget {
  const VerifyCodeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    VerifyCodeSignUpControllerImp controller =
        Get.put(VerifyCodeSignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Verification Code SignUp',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontWeight: FontWeight.w600, color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
              padding: const EdgeInsets.all(5),
              child: Text('Check Code',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline1),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Please enter the code sent \n to your email',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 18,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OtpTextField(
              borderRadius: BorderRadius.circular(15),
              fieldWidth: 50,
              numberOfFields: 5,
              focusedBorderColor: AppColor.primaryColor,
              cursorColor: AppColor.grey,
              enabledBorderColor: AppColor.greyLight,
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.goToSuccessSignUp();
              }, // end onSubmit
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
