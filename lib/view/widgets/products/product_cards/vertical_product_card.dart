import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/box_shadow.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter/material.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
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
                const RoundedImage(image: ImageStrings.productImage1),
                Positioned(
                  top: 6,
                  left: 6,
                  child: RoundedContainer(
                    radius: Sizes.sm,
                    backgroundColor:
                        CustomColors.primaryYellow.withOpacity(0.5),
                    padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.sm,
                      vertical: Sizes.xs,
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
                Container(
                  decoration: BoxDecoration(
                    color: dark
                        ? CustomColors.black.withOpacity(0.8)
                        : CustomColors.white.withOpacity(0.8),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
