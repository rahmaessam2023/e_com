import 'package:e_com/applink.dart';
import 'package:e_com/core/class/curd.dart';

class TestData {
  Curd crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.postData(AppLink.test, {});
    return response.fold((l) => l, (r) => r);
  }
}