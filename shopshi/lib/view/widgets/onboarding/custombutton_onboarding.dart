import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/onboarding_controller.dart';
import 'package:shopshi/core/constant/color.dart';

class CustomBtnOnBoarding extends GetView<OnBoardingControllerImp> {
  final String textbtn;
  const CustomBtnOnBoarding({super.key, required this.textbtn});
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 30),
        color: AppColor.primaryColor,
        child: MaterialButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minWidth: 200,
          padding: const EdgeInsets.all(2),
          textColor: AppColor.white,
          onPressed: () {
            controller.next();
          },
          child: Text(
            textbtn,
            style: const TextStyle(fontSize: 20),
          ),
        ));
  }
}
