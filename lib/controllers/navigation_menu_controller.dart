import 'package:ecommerce/view/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.amber),
    Container(color: Colors.orange),
  ];
}
