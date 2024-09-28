import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CounterController counterController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('Count: ${counterController.count}',
                style: TextStyle(fontSize: 24))),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: counterController.increment,
              child: Text('Increment'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Get.toNamed('/second'),
              child: Text('Go to Second Page'),
            ),
          ],
        ),
      ),
    );
  }
}
