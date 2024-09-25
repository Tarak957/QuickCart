import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/enums.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/view/widgets/texts/brandtitle_verified_icon_text.dart';
import 'package:ecommerce/view/widgets/texts/product_price_text.dart';
import 'package:ecommerce/view/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            RoundedContainer(
              radius: Sizes.sm,
              backgroundColor: CustomColors.primaryYellow.withOpacity(0.5),
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
            const SizedBox(width: Sizes.spaceBtwItems),
            const ProductPriceText(
              price: '250',
              isLineThrough: true,
            ),
            const SizedBox(width: Sizes.spaceBtwItems),
            const ProductPriceText(
              price: '174',
              isLarge: true,
            ),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        const ProductTitleText(title: 'Shirt'),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          children: [
            const ProductTitleText(title: 'Status'),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text(
              'In Stock',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .apply(color: CustomColors.green),
            )
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          children: [
            RoundedImage(
              image: ImageStrings.nikeLogo,
              height: 30,
              width: 30,
              imageColor: dark ? CustomColors.white : CustomColors.black,
            ),
            const SizedBox(width: Sizes.spaceBtwItems / 2),
            const BrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        )
      ],
    );
  }
}
