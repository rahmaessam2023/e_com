import 'package:e_com/controller/reserpasswordcontroller.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/core/functions/validate.dart';
import 'package:e_com/view/widgets/auth/custombuttonauth.dart';
import 'package:e_com/view/widgets/auth/customtextbodyauth.dart';
import 'package:e_com/view/widgets/auth/customtextformauth.dart';
import 'package:e_com/view/widgets/auth/customtexttitleauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImp controller =
        Get.put(ResetPasswordControllerImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('resetpass'.tr,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.grey)),
      ),
      backgroundColor: AppColor.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        child: Form(
          key: controller.formState,
          child: ListView(children: [
            const SizedBox(height: 40),
            CustomTextTitleAuth(text: "newpass".tr),
            const SizedBox(height: 15),
            CustomTextBodyAuth(text: "resettext".tr),
            const SizedBox(height: 55),
            GetBuilder<ResetPasswordControllerImp>(builder: (controller)=> CustomTextFormAuth(
              isNumber: TextInputType.name ,
               obscureText: controller.issecureReset,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.password,
              hinttext: "enpassword".tr,
              iconData: Icons.lock_outline,
              labeltext: "password".tr,
              onTapIcon: () {
                      controller.showPasswordReset();
                    },
              // mycontroller: ,
            ),),
            const SizedBox(height: 10,),
            GetBuilder<ResetPasswordControllerImp>(builder: (controller)=> CustomTextFormAuth(
              isNumber: TextInputType.name ,
               obscureText: controller.issecureReset,
              valid: (val) {
                return validInput(val!, 3, 40, "password");
              },
              mycontroller: controller.confirm,
              onTapIcon: () {
                      controller.showPasswordReset();
                    },
              hinttext: "confirmpass".tr,
              iconData: Icons.lock_outline,
              labeltext: "confirm".tr,
              // mycontroller: ,
            ),),
            CustomButtomAuth(
                text: "save".tr,
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