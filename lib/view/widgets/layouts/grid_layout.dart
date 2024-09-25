import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  final EdgeInsetsGeometry padding;
  const GridLayout({
    super.key,
    required this.itemCount,
    this.mainAxisExtent = 280,
    required this.itemBuilder,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.md),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: GridView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: Sizes.gridViewSpacing,
          crossAxisSpacing: Sizes.gridViewSpacing,
          mainAxisExtent: mainAxisExtent,
        ),
        itemBuilder: itemBuilder,
      ),
    );
  }
}
