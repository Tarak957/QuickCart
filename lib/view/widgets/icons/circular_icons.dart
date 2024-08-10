import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);

    return Container(
      decoration: BoxDecoration(
        color: dark
            ? CustomColors.black.withOpacity(0.8)
            : CustomColors.white.withOpacity(0.8),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.favorite_border),
      ),
    );
  }
}
