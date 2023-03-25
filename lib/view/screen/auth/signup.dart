import 'package:e_com/controller/signupcontroller.dart';
import 'package:e_com/core/class/statusrequest.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/core/functions/alertexitapp.dart';
import 'package:e_com/core/functions/validate.dart';
import 'package:e_com/view/widgets/auth/custombuttonauth.dart';
import 'package:e_com/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_com/view/widgets/auth/customtextformauth.dart';
import 'package:e_com/view/widgets/auth/customtexttitleauth.dart';
import 'package:e_com/view/widgets/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(SignUpControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('sign'.tr,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.grey)),
      ),
      backgroundColor: AppColor.backgroundcolor,
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<SignUpControllerImp>(builder: (controller)=> 
          controller.statusRequest == StatusRequest.loading ? 
         const Center(child:  CircularProgressIndicator()): Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formState,
              child: ListView(children: [
                const SizedBox(height: 40),
                CustomTextTitleAuth(text: "wel".tr),
                const SizedBox(height: 15),
                CustomTextBodyAuth(text: "signtext".tr),
                const SizedBox(height: 55),
                CustomTextFormAuth(
                  isNumber: TextInputType.name,
                  valid: (val) {
                    return validInput(val!, 3, 20, "username");
                  },
                  mycontroller: controller.username,
                  hinttext: "enuser".tr,
                  iconData: Icons.person_outline,
                  labeltext: "user".tr,
                  // mycontroller: ,
                ),
                CustomTextFormAuth(
                  isNumber: TextInputType.emailAddress,

                  valid: (val) {
                    return validInput(val!, 3, 40, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "enemail".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "email".tr,
                  // mycontroller: ,
                ),
                CustomTextFormAuth(
                  isNumber: TextInputType.phone,
                  valid: (val) {
                    return validInput(val!, 7, 11, "phone");
                  },
                  mycontroller: controller.phone,
                  hinttext: "enphone".tr,
                  iconData: Icons.phone_android_outlined,
                  labeltext: "phone".tr,
                  // mycontroller: ,
                ),
                GetBuilder<SignUpControllerImp>(builder: (controller)=>CustomTextFormAuth(
                  isNumber: TextInputType.name,

                  valid: (val) {
                    return validInput(val!, 3, 30, "password");
                  },
                  mycontroller: controller.password,
                   obscureText: controller.issecureSign,
                  hinttext: "enpassword".tr,
                  iconData: Icons.lock_outline,
                  labeltext: "password".tr,
                  onTapIcon: () {
                      controller.showPasswordSign();
                    },
                  // mycontroller: ,
                )),
                CustomButtomAuth(
                    text: "sign".tr,
                    onPressed: () {
                      controller.signup();
                    }),
                const SizedBox(height: 40),
                CustomTextSignUpOrSignIn(
                  textone: "have".tr,
                  texttwo: "login".tr,
                  onTap: () {
                    controller.goToLogIn();
                  },
                ),
              ]),
            ),
          ),)),
    );
  }
}