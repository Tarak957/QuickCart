import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentCarouselIndex = 0.obs;

  void updatePageIndicator(index) {
    currentCarouselIndex.value = index;
  }
}
