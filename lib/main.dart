import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_web_example/pages/home/home.dart';

import 'controllers/menu_controller.dart';

void main(){
  Get.put(MenuController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web',
      theme: ThemeData(visualDensity: VisualDensity.adaptivePlatformDensity),
      home: HomePage(),
    );
  }
}
