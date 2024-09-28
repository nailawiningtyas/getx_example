import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: Center(
        child: Obx(() => Text('Count: ${counterController.count}',
            style: TextStyle(fontSize: 24))),
      ),
    );
  }
}
