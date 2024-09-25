import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/enums.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:ecommerce/view/widgets/texts/brandtitle_verified_icon_text.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final bool showBorder;
  final void Function()? onTap;
  const BrandCard({
    super.key,
    this.showBorder = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: RoundedContainer(
        padding: const EdgeInsets.all(Sizes.sm),
        showBorder: showBorder,
        backgroundColor: CustomColors.transparent,
        child: Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.xs),
                child: RoundedImage(
                  height: 40,
                  width: 40,
                  image: ImageStrings.nikeLogo,
                  isNetworkImage: false,
                  backgroundColor: CustomColors.transparent,
                  imageColor: dark ? CustomColors.white : CustomColors.black,
                ),
              ),
            ),
            const SizedBox(width: Sizes.spaceBtwItems / 2),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const BrandTitleTextWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSize: TextSizes.large,
                  ),
                  Text(
                    '250 Products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
