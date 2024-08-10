import 'package:ecommerce/view/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/view/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/view/screens/home/widgets/home_header_container.dart';
import 'package:ecommerce/view/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/view/screens/home/widgets/search_container.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/widgets/products/product_cards/vertical_product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeaderContainer(
              child: Column(
                children: [
                  HomeAppbar(),
                  SizedBox(height: Sizes.spaceBtwSections),
                  SearchContainer(hintText: TextStrings.searchContainerTitle),
                  SizedBox(height: Sizes.spaceBtwSections),
                  HomeCategories(),
                ],
              ),
            ),
            PromoSlider(
              banners: [
                ImageStrings.promoBanner1,
                ImageStrings.promoBanner2,
                ImageStrings.promoBanner3,
              ],
            ),
            SizedBox(height: Sizes.spaceBtwSections),
            VerticalProductCard(),
          ],
        ),
      ),
    );
  }
}
