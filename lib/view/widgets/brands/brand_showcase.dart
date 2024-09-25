import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/brands/brand_card.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter/material.dart';

class BrandShowCase extends StatelessWidget {
  final List<String> images;
  const BrandShowCase({
    super.key,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: CustomColors.darkGrey,
      backgroundColor: CustomColors.transparent,
      padding: const EdgeInsets.all(Sizes.md),
      margin: const EdgeInsets.only(bottom: Sizes.defaultSpace),
      child: Column(
        children: [
          const BrandCard(showBorder: false),
          Row(
            children: images
                .map((image) => brandProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }
}

Widget brandProductImageWidget(String image, context) {
  final dark = HelperFunctions.isDarkMode(context);
  return Expanded(
    child: RoundedContainer(
      height: 100,
      padding: const EdgeInsets.all(Sizes.md),
      margin: const EdgeInsets.symmetric(horizontal: Sizes.xs),
      backgroundColor: dark ? CustomColors.darkGrey : CustomColors.light,
      child: Image(
        fit: BoxFit.contain,
        image: AssetImage(
          image,
        ),
      ),
    ),
  );
}
