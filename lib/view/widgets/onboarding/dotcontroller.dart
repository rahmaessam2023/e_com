import 'package:e_com/controller/onboardingcontroller.dart';
import 'package:e_com/core/constant/colors.dart';
import 'package:e_com/data/datasource/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDotControllerOnBoarding extends StatelessWidget {
  const CustomDotControllerOnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<onBoardingControllerImp>(
        builder: (controller) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                    onBoardingList.length,
                    (index) => AnimatedContainer(
                          margin: const EdgeInsets.only(right: 5),
                          duration: const Duration(milliseconds: 600),
                          width: controller.currentPage == index ? 20 : 5,
                          height: 6,
                          decoration: BoxDecoration(
                              color: controller.currentPage == index?  AppColor.primaryColor : AppColor.grey,
                              borderRadius: BorderRadius.circular(30)),
                        ))
              ],
            ));
  }
}