import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<dynamic> changeLanguageDialog() {
  return Get.defaultDialog(
      title: "Change Language",
      content: const Text(''),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {

            }, child:  const Text("Persian")),
            ElevatedButton(onPressed: () {

            }, child:  const Text("English")),
          ],
        )
      ]);
}
