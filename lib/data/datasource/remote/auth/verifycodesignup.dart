import 'package:e_com/applink.dart';
import 'package:e_com/core/class/curd.dart';


class VerifyCodeSignupData {
  Curd crud;
  VerifyCodeSignupData(this.crud);
  postdata(String email, String verifycode ) async {
    var response = await crud.postData(AppLink.verifycodeSignup, {
      "email": email,
      "verifycode": verifycode
      
    });
    return response.fold((l) => l, (r) => r);
  }
}