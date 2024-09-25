import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/texts/brandtitle_verified_icon_text.dart';
import 'package:ecommerce/view/widgets/texts/product_title_text.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedImage(
          image: ImageStrings.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(Sizes.sm),
          backgroundColor: HelperFunctions.isDarkMode(context)
              ? CustomColors.darkGrey
              : CustomColors.light,
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitleTextWithVerifiedIcon(title: 'Nike'),
            const Flexible(
              child: ProductTitleText(
                title: 'Black Sports shoes',
                maxLines: 1,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Color ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'Green ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  TextSpan(
                    text: 'Size ',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  TextSpan(
                    text: 'UK 08 ',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
