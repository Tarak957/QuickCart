import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/containers/rounded_container.dart';
import 'package:ecommerce/view/widgets/icons/circular_icons.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/texts/brandtitle_verified_icon_text.dart';
import 'package:ecommerce/view/widgets/texts/product_price_text.dart';
import 'package:ecommerce/view/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';

class HorizontalProductCard extends StatelessWidget {
  const HorizontalProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? CustomColors.darkGrey : CustomColors.lightContainer,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? CustomColors.dark : CustomColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    image: ImageStrings.productImage1,
                    applyImageradius: true,
                  ),
                ), //!discount tag
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
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.all(Sizes.sm),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: 'Green Nike half sleeves Shirt',
                        isSmallSize: true,
                      ),
                      SizedBox(height: Sizes.spaceBtwItems / 2),
                      BrandTitleTextWithVerifiedIcon(title: 'Nike')
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(child: ProductPriceText(price: '35')),
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
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
