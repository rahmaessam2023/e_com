import 'package:e_com/core/constant/approute.dart';
import 'package:get/get.dart';

abstract class SuccessResetPasswordController extends GetxController{

  
  goToLogInPage( );
  
}

class SuccessResetPasswordControlleImp extends SuccessResetPasswordController{

  
  @override
  goToLogInPage() {
   Get.offAllNamed(AppRoute.login);
  }

}