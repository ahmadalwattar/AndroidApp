import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/controller/onboarding_controller.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/data/datasource/static/static.dart';

class SliderOnBoarding extends GetView<OnBoardingControllerImp> {
  const SliderOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller.pageController,
        onPageChanged: (val) {
          print(val);
          controller.onPageChanged(val);
        },
        itemCount: onBoardingList.length,
        itemBuilder: ((context, i) => Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 35),
                  child: Text(
                    onBoardingList[i].title!,
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
                const SizedBox(height: 60),
                Image.asset(
                  onBoardingList[i].image!,
                  height: 250,
                  width: 300,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 60),
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      onBoardingList[i].body!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1,
                    )),
              ],
            )));
  }
}
