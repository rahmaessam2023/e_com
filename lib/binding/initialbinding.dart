import 'package:e_com/core/class/curd.dart';
import 'package:get/get.dart';

class InitialBindings extends Bindings{
  @override
  void dependencies() {
   Get.put(Curd());
  }

}