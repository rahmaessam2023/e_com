import 'package:e_com/core/class/statusrequest.dart';
import 'package:e_com/core/constant/approute.dart';
import 'package:e_com/core/functions/handling.dart';
import 'package:e_com/data/datasource/remote/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class LogInController extends GetxController{

  login();
  goToSignUp();
  showPassword ();
   iconChange ();
  goTOForgetpassword();
  late TextEditingController email;
  late TextEditingController password;

}

class LogInControllerImp extends LogInController{

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool issecure = true;
   LoginData loginData = LoginData(Get.find());

  StatusRequest? statusRequest;
  

   @override
  showPassword (){
    issecure = issecure == true ? false : true;
    update();
  }

  @override
  iconChange (){
    issecure == true ? const Icon(Icons.lock_outline): const Icon(Icons.lock_open_outlined);
    update();
  }
  @override
  goToSignUp() {
   Get.offAllNamed(AppRoute.signup);
  }
  
  @override
  login() async {
    var formdate = formState.currentState;
    if(formdate!.validate()){
       statusRequest = StatusRequest.loading;
      update();
    var response = await loginData.postdata( email.text, password.text,);
    print("=================== $response");
    statusRequest = handlingDate(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       // data.addAll(response['data']);
         Get.offAllNamed(AppRoute.homepage);
      } else {
         statusRequest = StatusRequest.failure ; 
        Get.defaultDialog(title: "warning".tr, middleText: "warnlogin".tr);
        
       
      }
    }
    update();
    }else{
     
    }
  }

  
  @override
  void onInit() {

    email = TextEditingController();
    password= TextEditingController();

    

    super.onInit();
  }

  @override
  void dispose() {
   
   email.dispose();
   password.dispose();
    super.dispose();
  }
  
  @override
  goTOForgetpassword() {
   Get.toNamed(AppRoute.forgetpassword);
  }
    

}