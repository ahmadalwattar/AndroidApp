import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/auth/resetpassword_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/view/widgets/auth/custom_button_auth.dart';
import 'package:shopshi/view/widgets/auth/custom_textform_auth.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Reset Password',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontWeight: FontWeight.w600, color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                padding: const EdgeInsets.all(5),
                child: Text('change your password',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
              ),
              const SizedBox(
                height: 30,
              ),
              GetBuilder<ResetPasswordControllerImp>(
                builder: (controller) => CustomTextformAuth(
                  valid: (val) {},
                  isNumber: false,
                  secure: controller.isShowPassword,
                  labelText: 'New Password',
                  hintText: 'Enter new password',
                  iconData: Icons.key,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<ResetPasswordControllerImp>(
                builder: (controller) => CustomTextformAuth(
                  valid: (val) {},
                  isNumber: false,
                  secure: controller.isShowPassword,
                  labelText: 'Confirm Password',
                  hintText: 'Re-Enter new password',
                  iconData: Icons.key,
                  onTapIcon: () {
                    controller.showPassword();
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBtnAuth(
                  textbtn: 'Save',
                  onPressed: () {
                    controller.goToSuccessRestetPassword();
                  }),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You have an account ? "),
                  InkWell(
                    onTap: () {
                      // controller.goToSignIn();
                    },
                    child: const Text("Sign In",
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontWeight: FontWeight.bold)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
