import 'package:flutter/material.dart';

class ProductPriceText extends StatelessWidget {
  final String price;
  final bool isLarge, isLineThrough;
  final int maxLines;
  const ProductPriceText({
    super.key,
    required this.price,
    this.isLarge = false,
    this.isLineThrough = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$price/-',
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
                decoration: isLineThrough ? TextDecoration.lineThrough : null,
              )
          : Theme.of(context).textTheme.titleLarge!.apply(
                decoration: isLineThrough ? TextDecoration.lineThrough : null,
              ),
    );
  }
}
