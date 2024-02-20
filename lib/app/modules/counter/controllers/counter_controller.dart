import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  //TODO: Implement CounterController

  final count = 20.obs;

  void increment() {
    if (count.value >= 25) {
      Get.snackbar("title", "batas maksimum 25", backgroundColor: Colors.red);
    } else {
      count.value++;
    }
  }

  void kecilkan() {
    if (count.value <= 20) {
      Get.snackbar("title", "tidak bisa menguragi leboh dari 20");
    } else {
      count.value--;
    }
  }
}
