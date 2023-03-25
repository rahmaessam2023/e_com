import 'package:e_com/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HandlingDataView extends StatelessWidget {

  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest ==  StatusRequest.loading 
    ? const Center() :
    statusRequest == StatusRequest.offlineFailure
    ? const Center() :
    statusRequest == StatusRequest.serverFailure
    ? const Center():
    statusRequest == StatusRequest.failure
    ? const Center():
    widget;
  }
}