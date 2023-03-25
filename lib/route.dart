import 'package:e_com/core/constant/approute.dart';
import 'package:e_com/core/middleware/middleware.dart';
import 'package:e_com/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:e_com/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:e_com/view/screen/auth/forgetpassword/successresetpassword.dart';
import 'package:e_com/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:e_com/view/screen/auth/login.dart';
import 'package:e_com/view/screen/auth/signup.dart';
import 'package:e_com/view/screen/auth/successsignup.dart';
import 'package:e_com/view/screen/auth/verifycodesignup.dart';
import 'package:e_com/view/screen/home.dart';
import 'package:e_com/view/screen/language.dart';
import 'package:e_com/view/screen/onboarding.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: "/", page: ()=>const Language() , middlewares: [
    MyMiddleWare()
  ]), 
  GetPage(name: AppRoute.login, page: ()=>const Login() ),
  GetPage(name: AppRoute.forgetpassword, page: ()=>const ForgetPassword() ),
  GetPage(name: AppRoute.resetpassword, page: ()=>const ResetPassword() ),
  GetPage(name: AppRoute.verfiycode, page: ()=>const VerfiyCode() ),
  GetPage(name: AppRoute.signup, page: ()=>const SignUp() ),
  GetPage(name: AppRoute.successresetpassword, page: ()=>const SuccessResetPassword() ),
  GetPage(name: AppRoute.verfiycodesignup, page: ()=>const VerfiyCodeSignUp() ),
  GetPage(name: AppRoute.successsignUp, page: ()=>const SuccessSignUp() ),

  GetPage(name: AppRoute.onboarding, page: ()=>const OnBoarding() ),
  GetPage(name: AppRoute.homepage, page: ()=>const HomePage() ),

];
