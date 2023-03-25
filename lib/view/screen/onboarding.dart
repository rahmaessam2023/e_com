import 'package:e_com/controller/onboardingcontroller.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/view/widgets/onboarding/custombutton.dart';
import 'package:e_com/view/widgets/onboarding/customslider.dart';
import 'package:e_com/view/widgets/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(onBoardingControllerImp()) ;
    return Scaffold(
        backgroundColor: AppColor.backgroundcolor,
        body: SafeArea(
          child: Column(children: [
            const Expanded(
              flex: 3,
              child: CustomSliderOnBoarding(),
            ),
            Expanded(
                flex: 1,
                child: Column(
                  children: const [
                    CustomDotControllerOnBoarding(),
                    Spacer(),
                    CustomButtonOnBoarding()
                  ],
                )),
                
          ]),
        ));
  }
}