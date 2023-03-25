import 'package:e_com/core/constant/approute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{

  check ();
  goToVerifyCode( );
  goback();
  

  late TextEditingController email ;
  
}

class ForgetPasswordControllerImp extends ForgetPasswordController{

  GlobalKey<FormState> formState = GlobalKey<FormState>(); 
  @override
  goToVerifyCode() {
   Get.offAllNamed(AppRoute.verfiycode);
  }
  
  @override
  check() {
    var formdate = formState.currentState;
    if(formdate!.validate()){
      goToVerifyCode();
    }else{
      print("not vaild");
    }
  }

  
  @override
  void onInit() {

    email = TextEditingController();
   
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    
    super.dispose();
  }
  
  @override
  goback() {
    Get.offAllNamed(AppRoute.login);
  }
  

}