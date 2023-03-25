import 'package:e_com/core/class/statusrequest.dart';

handlingDate(response){

  if(response == StatusRequest){
    return response;
  }else {
    return StatusRequest.success;
  }
}