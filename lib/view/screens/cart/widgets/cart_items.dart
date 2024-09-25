import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/products/cart/add_remove_button.dart';
import 'package:ecommerce/view/widgets/products/cart/cart_item.dart';
import 'package:ecommerce/view/widgets/texts/product_price_text.dart';
import 'package:flutter/material.dart';

class CartItems extends StatelessWidget {
  final bool showAddRemoveButton;
  const CartItems({
    super.key,
    this.showAddRemoveButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      separatorBuilder: (_, __) =>
          const SizedBox(height: Sizes.spaceBtwSections),
      itemCount: 2,
      itemBuilder: (_, index) => Column(
        children: [
          const CartItem(),
          if (showAddRemoveButton) const SizedBox(height: Sizes.spaceBtwItems),
          if (showAddRemoveButton)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    ProductAddRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '300')
              ],
            ),
        ],
      ),
    );
  }
}
