import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/instance_manager.dart';
import 'package:shopshi/core/constant/color.dart';
import 'package:shopshi/core/localization/changelocal.dart';
import 'package:shopshi/core/localization/translation.dart';
import 'package:shopshi/core/services/services.dart';
import 'package:shopshi/routes.dart';

import 'bindings/intialbindings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: MyTranslation(),
      locale: controller.language,
      initialBinding: IntialBindings(),
      title: 'Flutter Demo',
      // locale: controller.language,
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: AppColor.black),
          bodyText1: TextStyle(height: 1.5, color: AppColor.grey, fontSize: 16),
        ),
        primarySwatch: Colors.blue,
      ),
      // home: const Language()
      // routes: generalRoutes,
      getPages: routes,
    );
  }
}
