import 'package:e_com/binding/initialbinding.dart';
import 'package:e_com/core/localization/cahangelocal.dart';
import 'package:e_com/core/localization/translation.dart';
import 'package:e_com/core/services/services.dart';
import 'package:e_com/route.dart';
import 'package:e_com/view/screen/auth/login.dart';
import 'package:e_com/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:e_com/view/screen/onboarding.dart";

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: MyTranslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialBinding: InitialBindings(),
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 46, 85, 182),
        primarySwatch: Colors.grey
      ),
      getPages: routes,
    );
  }
}


