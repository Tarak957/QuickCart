import 'package:ecommerce/view/screens/cart/cart.dart';
import 'package:ecommerce/view/screens/home/widgets/home_header_container.dart';
import 'package:ecommerce/view/screens/order/order.dart';
import 'package:ecommerce/view/screens/profile/profile.dart';
import 'package:ecommerce/view/screens/profile/address/user_address.dart';
import 'package:ecommerce/view/screens/settings/widgets/settings_tile.dart';
import 'package:ecommerce/view/screens/settings/widgets/user_profile_tile.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
              height: 225,
              child: Column(
                children: [
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: CustomColors.white),
                    ),
                  ),
                  UserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  SettingsTile(
                    title: 'My Addresses',
                    subTitle: 'Set delivery address',
                    icon: Icons.home_outlined,
                    onTap: () {
                      Get.to(() => const UserAddressScreen());
                    },
                  ),
                  SettingsTile(
                    title: 'My Cart',
                    subTitle: 'Add, remove and checkout products',
                    icon: Icons.shopping_bag_outlined,
                    onTap: () {
                      Get.to(() => const CartScreen());
                    },
                  ),
                  SettingsTile(
                    title: 'My Orders',
                    subTitle: 'In-Progress and Completed Orders',
                    icon: Icons.done_all,
                    onTap: () {
                      Get.to(() => const OrdersScreen());
                    },
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  const SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  SettingsTile(
                    title: 'Load Data',
                    subTitle: 'Upload data to your Cloud Firebase',
                    icon: Icons.upload_file_rounded,
                    onTap: () {},
                  ),
                  SettingsTile(
                    title: 'Location',
                    subTitle: 'Set recommendation based on location',
                    icon: Icons.location_on_outlined,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
