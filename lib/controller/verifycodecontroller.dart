import 'package:e_com/core/constant/approute.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController{

  check ();
  goToResetPassword( );
  
  

  late String verifyCode ;
  
}

class VerifyCodeControllerImp extends VerifyCodeController{

  
  @override
  goToResetPassword() {
   Get.offAllNamed(AppRoute.resetpassword);
  }
  
  @override
  check() {
    
  }

  
  @override
  void onInit() {

   
   
    super.onInit();
  }

  
  
  
  

}