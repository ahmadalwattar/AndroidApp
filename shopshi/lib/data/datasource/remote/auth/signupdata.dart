import 'package:shopshi/core/class/Rcud.dart';
import 'package:shopshi/linkapi.dart';

class SignupData {
  Rcud rcud;

  SignupData(this.rcud);

  postData(String username,String password,String email,String phone) async {
    var response = await rcud.postData(AppLink.signup, {
      'username' : username ,
      'password' : password ,
      'email' : email ,
      'phone' : phone ,
    });
    return response.fold((l) => l, (r) => r);
  }
}
