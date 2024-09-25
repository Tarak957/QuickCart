import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/enums.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/texts/brand_title_text.dart';
import 'package:flutter/material.dart';

class BrandTitleTextWithVerifiedIcon extends StatelessWidget {
  final String title;
  final int maxLines;
  final Color? iconColor, textColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;
  const BrandTitleTextWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.iconColor = CustomColors.blue,
    this.textColor,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            textColor: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
          ),
        ),
        const SizedBox(width: Sizes.xs),
        Icon(
          Icons.verified,
          color: iconColor,
          size: Sizes.iconXs,
        )
      ],
    );
  }
}
