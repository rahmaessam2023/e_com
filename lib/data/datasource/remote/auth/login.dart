import 'package:e_com/applink.dart';
import 'package:e_com/core/class/curd.dart';


class LoginData {
  Curd crud;
  LoginData(this.crud);
  postdata(String email, String password,  ) async {
    var response = await crud.postData(AppLink.login, {
     
      "email": email,
      "password":password,
   
    });
    return response.fold((l) => l, (r) => r);
  }
}