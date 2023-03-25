import 'package:get/get.dart';

validInput(String val, int min, int max, String type) {
  if (type == "username") {
    if (!GetUtils.isUsername(val)) {
      return "notvaluser".tr;
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "notvalemail".tr;
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "notvalphone".tr;
    }
  }
  

  if (val.isEmpty) {
    return "empty".tr;
  }

  if (val.length < min) {
    return"${"less".tr} $min";
  }

  if (val.length > max) {
    return "${"more".tr} $max";
  }
}