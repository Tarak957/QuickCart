import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CircularIcon extends StatelessWidget {
  final double? height, width, size;
  final IconData icon;
  final Color? color, backgroundColor;
  final VoidCallback? onPressed;
  const CircularIcon({
    super.key,
    this.height,
    this.width,
    this.size = Sizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: GestureDetector(
        onTap: onPressed,
        child: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
