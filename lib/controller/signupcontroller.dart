
import 'package:e_com/core/class/statusrequest.dart';
import 'package:e_com/core/constant/approute.dart';
import 'package:e_com/core/functions/handling.dart';
import 'package:e_com/data/datasource/remote/auth/signupdata.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{

  signup ();
  goToLogIn( );
  showPasswordSign();
  
  late TextEditingController username ;
  late TextEditingController email ;
  late TextEditingController phone ;
  late TextEditingController password ;
}

class SignUpControllerImp extends SignUpController{

  GlobalKey<FormState> formState = GlobalKey<FormState>();

  bool issecureSign = true;

  SignupData signupData = SignupData(Get.find());

  List data = [];

  StatusRequest? statusRequest;
  
   @override
  showPasswordSign (){
    issecureSign = issecureSign == true ? false : true;
    update();
  }
    @override
  goToLogIn() {
    
   Get.offAllNamed(AppRoute.login);
  }
  
  @override
  signup() async {
    var formdate = formState.currentState;
    if(formdate!.validate()){
      statusRequest = StatusRequest.loading;
      update();
    var response = await signupData.postdata(username.text, email.text, password.text, phone.text);
    print("=================== $response");
    statusRequest = handlingDate(response);
    if (StatusRequest.success == statusRequest) {
      if (response['status'] == "success") {
       // data.addAll(response['data']);
         Get.offAllNamed(AppRoute.verfiycodesignup, arguments: {
          "email": email.text,
         });
      } else {
         statusRequest = StatusRequest.failure ; 
        Get.defaultDialog(title: "warning".tr, middleText: "warntext".tr);
       
      }
    }
    update();
     
    }else{
    }

    
    
  }

  
  @override
  void onInit() {

    email = TextEditingController();
    username= TextEditingController();
    phone= TextEditingController();
    password= TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    username.dispose();
    phone.dispose();
    password.dispose();
    super.dispose();
  }
  

}