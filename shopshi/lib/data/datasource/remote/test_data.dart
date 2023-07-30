import 'package:shopshi/core/class/Rcud.dart';
import 'package:shopshi/linkapi.dart';

class TestData {
  Rcud rcud;

  TestData(this.rcud);

  getData() async {
    var response = await rcud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}
