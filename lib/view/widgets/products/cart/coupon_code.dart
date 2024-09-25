import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.only(
          top: Sizes.sm, bottom: Sizes.sm, right: Sizes.sm, left: Sizes.sm),
      backgroundColor: dark ? CustomColors.dark : CustomColors.white,
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: dark
                    ? CustomColors.white.withOpacity(0.5)
                    : CustomColors.dark.withOpacity(0.5),
                backgroundColor: CustomColors.grey.withOpacity(0.2),
                side: BorderSide(
                  color: CustomColors.grey.withOpacity(0.1),
                ),
              ),
              child: const Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
