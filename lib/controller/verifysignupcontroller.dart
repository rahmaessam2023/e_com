import 'package:e_com/core/class/statusrequest.dart';
import 'package:e_com/core/constant/approute.dart';
import 'package:e_com/core/functions/handling.dart';
import 'package:e_com/data/datasource/remote/auth/verifycodesignup.dart';
import 'package:get/get.dart';

abstract class VerifySignUpController extends GetxController{

  check ();
  goToSuccessSignUp(String verifycodeSignup );
  
  VerifyCodeSignupData signupData = VerifyCodeSignupData(Get.find());

  late String email;
  
  StatusRequest? statusRequest;
}

class VerifySignUpControllerImp extends VerifySignUpController{

  
  @override
  goToSuccessSignUp(verifycodeSignup) async {
        statusRequest = StatusRequest.loading;
        update();
    var response = await signupData.postdata(email , verifycodeSignup);
    print("=================== $response");
    statusRequest = handlingDate(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       // data.addAll(response['data']);
       Get.offAllNamed(AppRoute.successsignUp);
      } else {
        Get.defaultDialog(title: "warning".tr, middleText: "warnverify".tr);
        statusRequest = StatusRequest.failure ; 
      }
    }
    update();
   
  }
  
  @override
  check() {
    
  }

  
  @override
  void onInit() {

   email = Get.arguments["email"];
   
    super.onInit();
  }

  
  
  
  

}