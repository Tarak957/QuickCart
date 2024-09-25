import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color? iconColor, badgeColor, textColor;
  const CartIcon({
    super.key,
    required this.onPressed,
    this.iconColor = Colors.white,
    this.badgeColor = Colors.red,
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Badge(
        isLabelVisible: true,
        backgroundColor: badgeColor,
        label: Text(
          '99',
          style: TextStyle(color: textColor),
        ),
        child: Icon(
          Icons.shopping_bag_outlined,
          color: iconColor,
        ),
      ),
    );
  }
}
