import 'package:ecommerce/controllers/home_controller.dart';
import 'package:ecommerce/controllers/navigation_menu_controller.dart';
import 'package:ecommerce/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

class InitControllers {
  void initControllers() {
    Get.put(OnboardingController());
    Get.put(NavigationMenuController());
    Get.put(HomeController());
  }
}
