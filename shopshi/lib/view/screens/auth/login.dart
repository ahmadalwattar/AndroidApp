import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/auth/login_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/core/functions/alertexitapp.dart';
import 'package:shopshi/core/functions/validinput.dart';
import 'package:shopshi/view/widgets/auth/custom_button_auth.dart';
import 'package:shopshi/view/widgets/auth/custom_textform_auth.dart';
import 'package:shopshi/view/widgets/auth/logoauth.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LoginControllerImp contrller = Get.put(LoginControllerImp());
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: AppColor.primaryColor,
          centerTitle: true,
          title: Text('Sign In',
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontWeight: FontWeight.w600, color: AppColor.grey)),
        ),
        body: WillPopScope(
          //to Exit
          onWillPop: alertExitApp,
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: contrller.formstate,
              child: ListView(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const Logoauth(),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'Welcome Back',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 30,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Sing in with your email and password \n or countinue with social media',
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
                      return validInput(val!, 5, 40, 'email');
                    },
                    isNumber: false,
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    iconData: Icons.email_outlined,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GetBuilder<LoginControllerImp>(
                    // Update UI
                    builder: (contrller) => CustomTextformAuth(
                      valid: (val) {
                        return validInput(val!, 5, 30, 'password');
                      },
                      isNumber: false,
                      secure: contrller.isShowPassword,
                      onTapIcon: () {
                        contrller.showPassword();
                      },
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      iconData: Icons.key,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      contrller.goToForgetPassword();
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        "Forget Password",
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                  CustomBtnAuth(
                    textbtn: 'Sign in',
                    onPressed: () {
                      contrller.login();
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account ? "),
                      InkWell(
                        onTap: () {
                          contrller.goToSignUp();
                        },
                        child: const Text("Sign Up",
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
        ));
  }
}




// ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: FadeInImage.assetNetwork(
//                   placeholder: ("assets/images/no_image_yet.jpg"),
//                   image: imageUrl,
//                   imageErrorBuilder: (context, error, stackTrace) {
//                     return const Image(
//                       image: AssetImage("assets/images/no_image.jpg"),
//                     );
//                   },
//                   fit: BoxFit.cover,
//                 ),
//               ),