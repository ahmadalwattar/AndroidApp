import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/auth/forgetpassword_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/core/functions/validinput.dart';
import 'package:shopshi/view/widgets/auth/custom_button_auth.dart';
import 'package:shopshi/view/widgets/auth/custom_textform_auth.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Forget Password',
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
                child: Text('Check Your Email',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline1),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextformAuth(
                valid: (val) {
                  return validInput(val!, 5, 40, 'email');
                },
                isNumber: false,
                mycontroller: controller.email,
                labelText: 'Email',
                hintText: 'Enter your email',
                iconData: Icons.email_outlined,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomBtnAuth(
                textbtn: 'Ckeck',
                onPressed: () {
                  controller.goToVerifyCode();
                },
              ),
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
