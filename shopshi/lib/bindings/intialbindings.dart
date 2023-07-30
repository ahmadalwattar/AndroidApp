import 'package:get/get.dart';
import 'package:shopshi/core/class/Rcud.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(Rcud());
  }
}
