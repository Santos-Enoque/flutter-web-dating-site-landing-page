import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum MenuItemName {Home, Members, Blog, Privacy, Contact}

class MenuController extends GetxController{
  static MenuController instance = Get.find();
  Rx<MenuItemName> hovering = MenuItemName.Home.obs;

  changeHovering(MenuItemName item){
    hovering = item.obs;
    debugPrint(hovering.value.toString());
  }
}