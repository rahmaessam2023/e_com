import 'package:e_com/core/constant/approute.dart';
import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController{

  
  goToLogInPage( );
  
}

class SuccessSignUpControlleImp extends SuccessSignUpController{

  
  @override
  goToLogInPage() {
   Get.offAllNamed(AppRoute.login);
  }

}