import 'package:ecommerce/view/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/view/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/view/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/view/screens/home/widgets/home_header_container.dart';
import 'package:ecommerce/view/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/view/screens/home/widgets/search_container.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/constants/text_strings.dart';
import 'package:ecommerce/view/widgets/products/product_cards/vertical_product_card.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeHeaderContainer(
              child: Column(
                children: [
                  HomeAppbar(), //!Appbar
                  SizedBox(height: Sizes.spaceBtwSections), //!searchbar
                  SearchContainer(hintText: TextStrings.searchContainerTitle),
                  SizedBox(height: Sizes.spaceBtwSections),
                  HomeCategories(), //!Categories
                ],
              ),
            ), //!promo slider
            const PromoSlider(
              banners: [
                ImageStrings.promoBanner1,
                ImageStrings.promoBanner2,
                ImageStrings.promoBanner3,
              ],
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
              child: SectionHeading(
                title: 'Popular Products',
                onPressed: () {},
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            GridLayout(
              itemCount: 4,
              itemBuilder: (_, index) {
                return const VerticalProductCard();
              },
            ),
            const SizedBox(height: Sizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
