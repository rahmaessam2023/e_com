import 'package:e_com/controller/verifycodecontroller.dart';
import 'package:e_com/core/constant/colors.dart'; 
import 'package:e_com/view/widgets/auth/customtextbodyauth.dart'; 
import 'package:e_com/view/widgets/auth/customtexttitleauth.dart'; 
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VerfiyCode extends StatelessWidget {
  const VerfiyCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VerifyCodeControllerImp controller =
        Get.put(VerifyCodeControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('vercode'.tr,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.grey)),
      ),
      backgroundColor: AppColor.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: ListView(children: [
          const SizedBox(height: 20),
          CustomTextTitleAuth(text: "checkcode".tr),
          const SizedBox(height: 10),
          CustomTextBodyAuth(
              text:
                  "encode".tr),
          const SizedBox(height: 55),
            OtpTextField(
              
                fieldWidth: 50.0,
                borderRadius: BorderRadius.circular(20),
                numberOfFields: 5,
                borderColor: AppColor.primaryColor,
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                     controller.goToResetPassword() ; 
                }, // end onSubmit
              ), 
          const SizedBox(height: 40),
        ]),
      ),
    );
  }
}