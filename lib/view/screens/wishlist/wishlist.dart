import 'package:ecommerce/view/screens/home/home.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/view/widgets/products/product_cards/vertical_product_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WishListScreen extends StatelessWidget {
  const WishListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        title:
            Text('WishList', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
            onPressed: () => Get.to(() => const HomeScreen()),
            icon: Icon(
              Icons.add,
              color: dark ? CustomColors.white : CustomColors.black,
            ),
          )
        ], //!optional
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              GridLayout(
                itemCount: 6,
                itemBuilder: (_, index) {
                  return const VerticalProductCard();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
