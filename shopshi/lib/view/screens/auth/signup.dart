import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/auth/signup_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/core/functions/validinput.dart';
import 'package:shopshi/view/widgets/auth/custom_button_auth.dart';
import 'package:shopshi/view/widgets/auth/custom_textform_auth.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SignUpControllerImp controller = Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.primaryColor,
        centerTitle: true,
        title: Text('Sign UP',
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontWeight: FontWeight.w600, color: AppColor.grey)),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Form(
          //for valid
          key: controller.formstate,
          child: ListView(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                padding: const EdgeInsets.all(5),
                child: Text(
                  'Welcome Back',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(fontSize: 30, fontFamily: 'PlayfairDisplay'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Sing Up with your email and password \n or countinue with social media',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        fontSize: 18,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextformAuth(
                  valid: (val) {
                    return validInput(val!, 5, 40, 'username');
                  },
                  isNumber: false,
                  mycontroller: controller.username,
                  labelText: 'Usename',
                  hintText: 'Enter your Usename',
                  iconData: Icons.person),
              const SizedBox(
                height: 20,
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
              CustomTextformAuth(
                valid: (val) {
                  return validInput(val!, 5, 40, 'phone');
                },
                isNumber: true,
                mycontroller: controller.phone,
                labelText: 'Phone',
                hintText: 'Enter your phone',
                iconData: Icons.phone_android,
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<SignUpControllerImp>(
                builder: (controller) => CustomTextformAuth(
                  valid: (val) {
                    return validInput(val!, 5, 40, 'password');
                  },
                  isNumber: false,
                  secure: controller.isShowPassword,
                  mycontroller: controller.password,
                  labelText: 'password',
                  hintText: 'Enter your password',
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
                textbtn: 'Sign Up',
                onPressed: () {
                  controller.SignUp();
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
                      controller.goToSignIn();
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
