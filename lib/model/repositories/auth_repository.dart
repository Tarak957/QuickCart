import 'package:ecommerce/view/authentication/login_screen/login.dart';
import 'package:ecommerce/view/personalisation/onboarding_screen/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final deviceStorage = GetStorage();
  @override
  void onReady() {
    screenRedirect();
  }

  screenRedirect() async {
    if (kDebugMode) {
      print('=========auth=========');
      print(deviceStorage.read('isFirstTime'));
    }
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnBoardingScreen());
  }
}
