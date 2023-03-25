
import 'package:e_com/core/services/services.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';


class LocaleController extends GetxController{

  Locale ? language;

  MyServices myService =Get.find();

  changeLanguage(String langcode){

    Locale locale = Locale(langcode);
    myService.sharedPreferences.setString("lang", langcode);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang= myService.sharedPreferences.getString('lang');
    if(sharedPrefLang== " ar"){
      language = const Locale("ar");
      
    }
    else if(sharedPrefLang == "en"){
      language = const Locale("en");
    }
    else{
      language= Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  } 
}
