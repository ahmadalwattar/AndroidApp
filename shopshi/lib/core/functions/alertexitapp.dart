import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopshi/core/constant/color.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "Warning",
      titleStyle:
          const TextStyle(color: AppColor.black, fontWeight: FontWeight.bold),
      middleText: "Are you sure you want to exit",
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: const Text("Cancel")),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: const Text("Exit Now")),
      ]);
  return Future.value(true);
}
