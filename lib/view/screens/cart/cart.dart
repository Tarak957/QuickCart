import 'package:ecommerce/view/screens/cart/widgets/cart_items.dart';
import 'package:ecommerce/view/screens/checkout/checkout.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(Sizes.defaultSpace),
        child: CartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () => Get.to(() => const CheckOutScreen()),
          child: Text(
            'Checkout 300/-',
            style: TextStyle(
              color: dark ? CustomColors.black : CustomColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
