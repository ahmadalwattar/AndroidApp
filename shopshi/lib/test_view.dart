import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:shopshi/controller/test_controller.dart';
import 'package:shopshi/core/class/statusrequest.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/core/constant/imageasset.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Title"),
        backgroundColor: AppColor.primaryColor,
      ),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return Center(
            child: Lottie.asset(AppImageAsset.loading, height: 200, width: 200),
          );
        } else if (controller.statusRequest == StatusRequest.offlinefailure) {
          return Center(
              child: Lottie.asset(AppImageAsset.noInternet,
                  height: 200, width: 200));
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          return Center(
              child: Lottie.asset(AppImageAsset.serverFailure,
                  height: 200, width: 200));
        } else if (controller.statusRequest == StatusRequest.failure) {
          return Center(
              child:
                  Lottie.asset(AppImageAsset.noData, height: 200, width: 200));
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              });
        }
      }),
    );
  }
}
