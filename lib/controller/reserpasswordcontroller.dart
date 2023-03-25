import 'package:e_com/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{

  check ();
  goToSuccessResetPassword( );
  showPasswordReset();
  

  late TextEditingController password ;
  late TextEditingController confirm;
  
}

class ResetPasswordControllerImp extends ResetPasswordController{

  GlobalKey<FormState> formState = GlobalKey<FormState>();
  bool issecureReset = true;
  
   @override
  showPasswordReset (){
    issecureReset = issecureReset == true ? false : true;
    update();
  }
  
  @override
  goToSuccessResetPassword() {
   Get.offAllNamed(AppRoute.successresetpassword);
  }
  
  @override
  check() {
    var formdate = formState.currentState;
    if(formdate!.validate()){
      goToSuccessResetPassword();
    }else{
      print("not vaild");
    }
  }

  
  @override
  void onInit() {

   password = TextEditingController();
   confirm = TextEditingController();
   
    super.onInit();
  }

  
  
  
  

}