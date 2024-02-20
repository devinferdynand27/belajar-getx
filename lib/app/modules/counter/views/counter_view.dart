import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/counter_controller.dart';

class CounterView extends GetView<CounterController> {
  CounterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterView'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                  onPressed: () {
                    controller.increment();
                  },
                  child: Icon(Icons.add)),
              Obx(() {
                return Text(
                  '${controller.count}',
                  style: TextStyle(fontSize: controller.count.toDouble()),
                );
              }),
              FloatingActionButton(
                  onPressed: () {
                    controller.kecilkan();
                  },
                  child: Icon(Icons.remove))
            ],
          )
        ],
      ),
    );
  }
}
