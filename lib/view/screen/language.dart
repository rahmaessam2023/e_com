import 'package:e_com/core/constant/approute.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/core/localization/cahangelocal.dart';
import 'package:e_com/view/widgets/language/custombuttonlang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 

class Language extends GetView<LocaleController> {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundcolor,
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("choose".tr, style: const TextStyle(fontSize: 32, color: Colors.grey, fontWeight:  FontWeight.bold)),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "اللغة العربية",
                  onPressed: () {
                    controller.changeLanguage("ar");
                    Get.toNamed(AppRoute.onboarding) ; 
                  }),
              CustomButtonLang(
                  textbutton: "English",
                  onPressed: () {
                    controller.changeLanguage("en");
                    Get.toNamed(AppRoute.onboarding) ; 
                  }),
            ],
          )),
    );
  }
}