import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/constant/routes.dart';
import 'package:shopshi/core/localization/changelocal.dart';
import 'package:shopshi/view/widgets/language/button_lang.dart';

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1'.tr,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 20,
            ),
            BtnLang(
                textbtn: '2'.tr,
                onPressed: () {
                  controller.changeLang('ar');
                  Get.toNamed(AppRoutes.onBoarding);
                }),
            BtnLang(
                textbtn: '3'.tr,
                onPressed: () {
                  controller.changeLang('en');
                  Get.toNamed(AppRoutes.onBoarding);
                }),
          ],
        ),
      ),
    );
  }
}
