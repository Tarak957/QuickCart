import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String dividerText;
  const CustomDivider({
    super.key,
    required this.dividerText,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? CustomColors.darkGrey : CustomColors.grey,
            endIndent: 5,
            indent: 60,
            thickness: 0.5,
          ),
        ),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? CustomColors.darkGrey : CustomColors.grey,
            endIndent: 60,
            indent: 5,
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
