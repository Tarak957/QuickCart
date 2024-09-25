import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class RoundedImage extends StatelessWidget {
  final double? height, width;
  final String image;
  final bool applyImageradius;
  final BoxBorder? border;
  final Color? backgroundColor, imageColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onTap;
  final double borderRadius;
  const RoundedImage({
    super.key,
    this.height,
    this.width,
    this.padding,
    required this.image,
    this.applyImageradius = true,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.isNetworkImage = false,
    this.onTap,
    this.borderRadius = Sizes.md,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: border,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageradius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: Image(
            color: imageColor,
            image: isNetworkImage
                ? NetworkImage(image)
                : AssetImage(image) as ImageProvider,
            fit: fit,
          ),
        ),
      ),
    );
  }
}
