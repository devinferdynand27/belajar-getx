import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("home is working"),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/profil");
            },
            child: Text("pindah ke profil"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/counter");
            },
            child: Text("pindah ke counter"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/biodata");
            },
            child: Text("pindah ke biodata"),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Get.toNamed("/invoice");
            },
            child: Text("pindah ke invoice"),
          ),
        ],
      )),
    );
  }
}
