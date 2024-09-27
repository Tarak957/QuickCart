import 'package:ecommerce/view/authentication/login_screen/login.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  get deviceStorage => null;
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      if (kDebugMode) {
        print('=========get=========');
        print(storage.read('isFirstTime'));
      }
      storage.write('isFirstTime', false);
      if (kDebugMode) {
        print('=========get=========');
        print(storage.read('isFirstTime'));
      }
      Get.offAll(() => const LoginScreen());
      update();
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    Get.offAll(() => const LoginScreen());
  }
}
