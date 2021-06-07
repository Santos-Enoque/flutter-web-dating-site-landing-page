import 'package:flutter/material.dart';
import 'package:flutter_web_example/helpers/style.dart';

Widget mobileTopBar(GlobalKey<ScaffoldState> key) => AppBar(
  leading: IconButton(icon: Icon(Icons.menu, color: active,), onPressed: (){
      key.currentState.openDrawer();
    },),
  title:
  Image.asset("assets/images/logo.png"),
  centerTitle: true,
  elevation: 0,
  backgroundColor: bgColor,
);
