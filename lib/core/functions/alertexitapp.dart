import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "alert".tr,
      titleStyle:const  TextStyle(color:  Color.fromARGB(255, 46, 85, 182) , fontWeight: FontWeight.bold),
      middleText: "exit".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color.fromARGB(255, 46, 85, 182))),
            onPressed: () {
              exit(0);
            },
            child: Text("confirm".tr, style: const TextStyle(color: Colors.white),)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(const Color.fromARGB(255, 46, 85, 182))),
            onPressed: () {
              Get.back();
            },
            child: Text("cancel".tr, style: const TextStyle(color: Colors.white),))
      ]);
  return Future.value(true);
}