import 'package:e_com/controller/logincontroller.dart';
import 'package:e_com/core/class/statusrequest.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/core/functions/alertexitapp.dart';
import 'package:e_com/core/functions/validate.dart';
import 'package:e_com/view/widgets/auth/custombuttonauth.dart';
import 'package:e_com/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_com/view/widgets/auth/customtextformauth.dart';
import 'package:e_com/view/widgets/auth/customtexttitleauth.dart';
import 'package:e_com/view/widgets/auth/logoauth.dart';
import 'package:e_com/view/widgets/auth/textsignup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Get.put(LogInControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('log'.tr,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.grey)),
      ),
      body: WillPopScope(
          onWillPop: alertExitApp,
          child: GetBuilder<LogInControllerImp>(builder: (controller) =>
          controller.statusRequest == StatusRequest.loading ?
          const Center(child: CircularProgressIndicator(),)
          : Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
            child: Form(
              key: controller.formState,
              child: ListView(children: [
                const LogoAuth(),
                const SizedBox(height: 50),
                CustomTextTitleAuth(text: "welback".tr),
                const SizedBox(height: 15),
                CustomTextBodyAuth(text: "logtext".tr),
                const SizedBox(height: 55),
                CustomTextFormAuth(
                  isNumber: TextInputType.emailAddress,

                  valid: (val) {
                    return validInput(val!, 5, 100, "email");
                  },
                  mycontroller: controller.email,
                  hinttext: "enemail".tr,
                  iconData: Icons.email_outlined,
                  labeltext: "email".tr,
                  // mycontroller: ,
                ),
                const SizedBox(height: 15,),
                GetBuilder<LogInControllerImp>(
                  builder: (controller) => CustomTextFormAuth(
                    obscureText: controller.issecure,
                    onTapIcon: () {
                      controller.showPassword();
                    },
                    isNumber: TextInputType.name,
                    valid: (val) {
                      return validInput(val!, 5, 30, "password");
                    },
                    mycontroller: controller.password,
                    hinttext: "enpassword".tr,
                    iconData: Icons.lock_outline,
                    labeltext: "password".tr,
                    // mycontroller: ,
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.goTOForgetpassword();
                  },
                  child: Text(
                    "forget".tr,
                    style:  const TextStyle(color: AppColor.grey),
                    textAlign: TextAlign.right,
                  ),
                ),
                const SizedBox(height: 30,),
                CustomButtomAuth(
                    text: "logB".tr,
                    onPressed: () {
                      controller.login();
                    }),
                const SizedBox(height: 30),
                CustomTextSignUpOrSignIn(
                  textone: "nothave".tr,
                  texttwo: "sign".tr,
                  onTap: () {
                    controller.goToSignUp();
                  },
                )
              ]),
            ),
          ),)),
    );
  }
}