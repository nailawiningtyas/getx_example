import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/counter_controller.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';

void main() {
  // Dependency Injection untuk CounterController
  Get.put(CounterController());

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/second', page: () => SecondPage()),
      ],
    );
  }
}
