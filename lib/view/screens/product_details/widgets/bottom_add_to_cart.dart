import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/icons/circular_icons.dart';
import 'package:flutter/material.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.defaultSpace,
        vertical: Sizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? CustomColors.dark : CustomColors.grey.withOpacity(0.4),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(Sizes.cardRadiusLg * 1.5),
          topRight: Radius.circular(Sizes.cardRadiusLg * 1.5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                onPressed: () {},
                icon: Icons.remove,
                width: 40,
                height: 40,
                backgroundColor: CustomColors.darkGrey,
                color: CustomColors.white,
              ),
              const SizedBox(width: Sizes.spaceBtwItems),
              const Text('2'),
              const SizedBox(width: Sizes.spaceBtwItems),
              CircularIcon(
                onPressed: () {},
                icon: Icons.add,
                width: 40,
                height: 40,
                backgroundColor: CustomColors.darkGrey,
                color: CustomColors.white,
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(Sizes.md),
            ),
            onPressed: () {},
            child: Text(
              'Add to Cart',
              style: TextStyle(
                color: dark ? Colors.black : Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
