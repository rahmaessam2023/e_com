

import 'package:e_com/applink.dart';
import 'package:e_com/core/class/curd.dart';


class SignupData {
  Curd crud;
  SignupData(this.crud);
  postdata(String username,String email, String password, String phone, ) async {
    var response = await crud.postData(AppLink.signUp, {
      "username": username,
      "email": email,
      "password":password,
      "phone": phone
    });
    return response.fold((l) => l, (r) => r);
  }
}