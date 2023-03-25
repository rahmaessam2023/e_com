import 'package:e_com/controller/forgetpasswordcontroller.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/core/functions/validate.dart';
import 'package:e_com/view/widgets/auth/custombuttonauth.dart';
import 'package:e_com/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_com/view/widgets/auth/customtextformauth.dart';
import 'package:e_com/view/widgets/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImp controller =
        Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('forget'.tr,
            style:const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.grey )),
      ),
      backgroundColor: AppColor.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(children: [
            const SizedBox(height: 40),
            CustomTextTitleAuth(text: "checke".tr),
            const SizedBox(height: 15),
            CustomTextBodyAuth(
                // please Enter Your Email Address To Recive A verification code
                text: "vertext".tr),
            const SizedBox(height: 55),
            CustomTextFormAuth(
              isNumber: TextInputType.emailAddress,
              valid: (val) {
                 return validInput(val!, 5, 30, "email");
              },
              mycontroller: controller.email,
              hinttext: "enemail".tr,
              iconData: Icons.email_outlined,
              labeltext: "email".tr,
              // mycontroller: ,
            ),
            CustomButtomAuth(
                text: "check".tr,
                onPressed: () {
                  controller.check();
                }),
            const SizedBox(height: 40),
          ]),
        ),
      ),
    );
  }
}