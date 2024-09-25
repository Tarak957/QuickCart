import 'package:ecommerce/view/screens/home/home.dart';
import 'package:ecommerce/view/screens/settings/settings.dart';
import 'package:ecommerce/view/screens/store/store.dart';
import 'package:ecommerce/view/screens/wishlist/wishlist.dart';
import 'package:get/get.dart';

class NavigationMenuController extends GetxController {
  Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomeScreen(),
    const StoreScreen(),
    const WishListScreen(),
    const SettingsScreen()
  ];
}
