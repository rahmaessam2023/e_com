import 'package:e_com/core/constant/approute.dart';
import 'package:e_com/data/datasource/static.dart';
import 'package:e_com/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class onBoardingController extends GetxController{

  next ();
  onPageChanged( int index);
}

class onBoardingControllerImp extends onBoardingController{

  MyServices myServices = Get.find();

  int currentPage =0;
  late PageController pageCOntroller;
  @override
  next() {
   currentPage++;
   if ( currentPage == onBoardingList.length ){
    myServices.sharedPreferences.setString("onboarding", "1");
    Get.offAllNamed(AppRoute.login);
   }else {
       pageCOntroller.animateToPage(currentPage, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
   }

  }
  skip() {
   currentPage= 4;
   pageCOntroller.animateToPage(currentPage, duration: const Duration(seconds: 1), curve: Curves.easeInOut);
  }

  @override
  onPageChanged(int index) {

    currentPage=index;
    update();
    
  }

  @override
  void onInit() {
    // TODO: implement onInit
    pageCOntroller = PageController();
    super.onInit();
  }

}