import 'package:e_com/controller/onboardingcontroller.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButtonOnBoarding extends GetView<onBoardingControllerImp> {
  const CustomButtonOnBoarding({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: 100,
      child: Column(
        children: [
          MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)) ,
              padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 13),
              textColor: Colors.white,
              onPressed: () {
                controller.next();
              },
              color: AppColor.primaryColor,
              child: Text("con".tr)),

              TextButton(onPressed: (){controller.skip();}, child: Text('skip'.tr, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),))
        ],
      ),
    );
  }
}