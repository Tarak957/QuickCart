import 'package:flutter/material.dart';

class CartIcon extends StatelessWidget {
  final VoidCallback onPressed;
  final Color iconColor;
  const CartIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Badge(
        isLabelVisible: true,
        label: const Text('99'),
        child: Icon(
          Icons.shopping_bag_outlined,
          color: iconColor,
        ),
      ),
    );
  }
}
