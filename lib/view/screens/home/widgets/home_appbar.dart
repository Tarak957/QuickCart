import 'package:ecommerce/view/screens/cart/cart.dart';
import 'package:ecommerce/view/screens/home/widgets/cart_icon.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TextStrings.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: CustomColors.white),
          ),
          Text(
            TextStrings.homeAppbarSubTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: CustomColors.white),
          ),
        ],
      ),
      actions: [
        CartIcon(onPressed: () => Get.to(() => const CartScreen())),
      ],
    );
  }
}
