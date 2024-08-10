import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String image, title;
  final Color? backgroundColor;
  final Color textColor;
  final void Function()? onTap;
  const CategoryTile({
    super.key,
    required this.image,
    required this.title,
    this.backgroundColor,
    this.textColor = CustomColors.white,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: Sizes.spaceBtwItems),
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(Sizes.sm),
              decoration: BoxDecoration(
                color: backgroundColor ?? (dark ? Colors.black : Colors.white),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                color: dark ? CustomColors.white : CustomColors.black,
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems / 2),
            SizedBox(
              width: 50,
              child: Text(
                title,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
