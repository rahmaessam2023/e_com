import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:e_com/core/functions/checkinternet.dart';
import 'package:e_com/core/class/statusrequest.dart';
import 'package:http/http.dart' as http;

class Curd {

  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data)async{
    try{

      if(await checkInternet()){

        var response = await http.Client().post(Uri.parse(linkUrl), body: data);
        if(response.statusCode == 200 || response.statusCode == 201){
          Map responseBody = jsonDecode(response.body);
          return Right(responseBody);
        }else{
          return const Left(StatusRequest.serverFailure);
        }

      }else{
        return const Left(StatusRequest.offlineFailure);
      }

    }catch(_){
      return const Left(StatusRequest.serverException);
    }

  }

}