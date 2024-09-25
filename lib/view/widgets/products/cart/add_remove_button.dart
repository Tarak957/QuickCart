import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/icons/circular_icons.dart';
import 'package:flutter/material.dart';

class ProductAddRemoveButton extends StatelessWidget {
  const ProductAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircularIcon(
          icon: Icons.remove,
          width: 32,
          height: 32,
          color: dark ? CustomColors.white : CustomColors.black,
          backgroundColor: dark ? CustomColors.darkGrey : CustomColors.light,
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: Sizes.spaceBtwItems),
        CircularIcon(
          icon: Icons.add,
          width: 32,
          height: 32,
          color: CustomColors.white,
          backgroundColor: CustomColors.primaryPurple,
        ),
      ],
    );
  }
}
