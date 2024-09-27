import 'package:ecommerce/view/screens/product_details/product_details.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/box_shadow.dart';
import 'package:ecommerce/view/widgets/icons/circular_icons.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/containers/rounded_container.dart';
import 'package:ecommerce/view/widgets/texts/brandtitle_verified_icon_text.dart';
import 'package:ecommerce/view/widgets/texts/product_price_text.dart';
import 'package:ecommerce/view/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [BoxShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(Sizes.productImageRadius),
          color: dark ? CustomColors.darkGrey : CustomColors.white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(Sizes.sm),
              backgroundColor: dark ? CustomColors.dark : CustomColors.light,
              child: Stack(
                children: [
                  //!image
                  const RoundedImage(image: ImageStrings.productImage1),
                  //!discount tag
                  Positioned(
                    top: 0,
                    left: 0,
                    child: RoundedContainer(
                      radius: Sizes.sm,
                      backgroundColor:
                          CustomColors.primaryYellow.withOpacity(0.5),
                      padding: const EdgeInsets.symmetric(
                        horizontal: Sizes.xs,
                        vertical: Sizes.xs / 2,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: CustomColors.black),
                      ),
                    ),
                  ),
                  //!fav icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                      icon: Icons.favorite,
                      color: CustomColors.red,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems / 2),
            Padding(
              padding: const EdgeInsets.only(left: Sizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductTitleText(
                      title: 'nike shoes', isSmallSize: true),
                  const SizedBox(height: Sizes.spaceBtwItems / 2),
                  const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
                  const SizedBox(height: Sizes.spaceBtwItems / 2),
                  //!price
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const ProductPriceText(price: '60', isLarge: true),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Badge(
                          isLabelVisible: true,
                          label: const Text('11'),
                          backgroundColor: CustomColors.red,
                          textColor: CustomColors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(right: 4, top: 4),
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.add_shopping_cart,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
