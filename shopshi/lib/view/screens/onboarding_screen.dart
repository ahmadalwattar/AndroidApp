import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:shopshi/controller/onboarding_controller.dart';
import 'package:shopshi/view/widgets/onboarding/custombutton_onboarding.dart';
import 'package:shopshi/view/widgets/onboarding/controller_onboarding.dart';
import 'package:shopshi/view/widgets/onboarding/custom_slider_onboarding.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(OnBoardingControllerImp());
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const Expanded(
          flex: 3,
          child: SliderOnBoarding(),
        ),
        Expanded(
            flex: 1,
            child: Column(
              children: const [
                ControllerOnBoarding(),
                // Spacer(
                //   flex: 2,
                // ),
                CustomBtnOnBoarding(textbtn: 'Next'),
              ],
            ))
      ],
    )));
  }
}
