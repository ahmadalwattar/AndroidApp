import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/onboarding_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/data/datasource/static/static.dart';

class ControllerOnBoarding extends StatelessWidget {
  const ControllerOnBoarding({super.key});

  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingControllerImp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardingList.length,
                  (index) => AnimatedContainer(
                        margin: const EdgeInsets.only(right: 6),
                        duration: const Duration(milliseconds: 800),
                        width: controller.currentPage == index ? 20 : 8,
                        height: 6,
                        decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(15)),
                      )),
            ]));
  }
}
