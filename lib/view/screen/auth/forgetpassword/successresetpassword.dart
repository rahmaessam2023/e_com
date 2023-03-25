import 'package:e_com/controller/successresetcontroller.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/view/widgets/auth/custombuttonauth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessResetPassword extends StatelessWidget {
  const SuccessResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SuccessResetPasswordControlleImp controller =
        Get.put(SuccessResetPasswordControlleImp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.backgroundcolor,
        elevation: 0.0,
        title: Text('succ'.tr,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: AppColor.grey)),
      ),
      backgroundColor: AppColor.backgroundcolor,
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(children: [
          const Center(
              child: Icon(
            Icons.check_circle_outline,
            size: 200,
            color: AppColor.primaryColor,
          )),
          Text("cong".tr,
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(fontSize: 30)),
          const SizedBox(height: 15,),        
          Text("resetsucc".tr, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: AppColor.grey),),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: CustomButtomAuth(
                text: "golog".tr,
                onPressed: () {
                  controller.goToLogInPage();
                }),
          ),
        ]),
      ),
    );
  }
}