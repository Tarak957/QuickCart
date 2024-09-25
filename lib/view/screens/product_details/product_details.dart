import 'package:ecommerce/view/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:ecommerce/view/screens/product_details/widgets/product_attributes.dart';
import 'package:ecommerce/view/screens/product_details/widgets/product_details_imageslider.dart';
import 'package:ecommerce/view/screens/product_details/widgets/product_meta_data.dart';
import 'package:ecommerce/view/screens/product_details/widgets/rate_and_share.dart';
import 'package:ecommerce/view/screens/product_reviews/product_reviews.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductDetailsImageSlider(),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
              child: Column(
                children: [
                  const RateAndShare(),
                  const ProductMetaData(),
                  const ProductAttributes(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Checkout',
                        style: TextStyle(
                          color: dark ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  const Divider(),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const ProductReviews());
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SectionHeading(
                            title: 'Reviews(199)', showActionButton: false),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAddToCart(),
    );
  }
}
