import 'package:ecommerce/controllers/navigation_menu_controller.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationMenuController>();
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Obx(
        () => navController.screens[navController.selectedIndex.value],
      ),
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 3,
          selectedIndex: navController.selectedIndex.value,
          backgroundColor: dark ? CustomColors.dark : CustomColors.light,
          indicatorColor: dark
              ? CustomColors.white.withOpacity(0.1)
              : CustomColors.black.withOpacity(0.1),
          onDestinationSelected: (index) {
            navController.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            NavigationDestination(icon: Icon(Icons.store), label: 'Store'),
            NavigationDestination(
                icon: Icon(Icons.favorite_border), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}
