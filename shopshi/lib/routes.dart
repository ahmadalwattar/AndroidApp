import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';
import 'package:shopshi/core/middleware/mymiddleware.dart';
import 'package:shopshi/test.dart';
import 'package:shopshi/test_view.dart';
import 'package:shopshi/view/screens/auth/forgetpassword/forgetpassword.dart';
import 'package:shopshi/view/screens/auth/login.dart';
import 'package:shopshi/view/screens/auth/forgetpassword/resetpassword.dart';
import 'package:shopshi/view/screens/auth/signup.dart';
import 'package:shopshi/view/screens/auth/forgetpassword/success_resetpassword.dart';
import 'package:shopshi/view/screens/auth/success_signup.dart';
import 'package:shopshi/view/screens/auth/forgetpassword/verfiycode.dart';
import 'package:shopshi/view/screens/auth/verifycodesignup.dart';
import 'package:shopshi/view/screens/language.dart';
import 'package:shopshi/view/screens/onboarding_screen.dart';


List<GetPage<dynamic>>? routes = [
  //Auth
  GetPage(
      name: '/', page: () => const Language(), middlewares: [MyMiddleWare()]),
  // GetPage(name: '/', page: () => const Test()),
  GetPage(name: AppRoutes.logIn, page: () => const Login()),
  GetPage(name: AppRoutes.signUp, page: () => const Signup()),
  GetPage(name: AppRoutes.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoutes.verifyCode, page: () => const VerifyCode()),
  GetPage(name: AppRoutes.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoutes.successResetPassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoutes.successSignUp, page: () => const SuccessSignup()),
  GetPage(
      name: AppRoutes.verifyCodeSignUp, page: () => const VerifyCodeSignUp()),
  //onBoarding
  GetPage(name: AppRoutes.onBoarding, page: () => const OnBoarding()),
];





















// Map<String, Widget Function(BuildContext)> generalRoutes = {
//   //Auth
//   AppRoutes.logIn: (context) => const Login(),
//   AppRoutes.signUp: (context) => const Signup(),
//   AppRoutes.forgetPassword: (context) => const ForgetPassword(),
//   AppRoutes.verifyCode: (context) => const VerifyCode(),
//   AppRoutes.resetPassword: (context) => const ResetPassword(),
//   AppRoutes.successResetPassword: (context) => const SuccessResetPassword(),
//   AppRoutes.successSignUp: (context) => const SuccessSignup(),
//   AppRoutes.verifyCodeSignUp: (context) => const VerifyCodeSignUp(),

//   //OnBoarding
//   AppRoutes.onBoarding: (context) => const OnBoarding(),
// };
