import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/view/widgets/products/product_cards/vertical_product_card.dart';
import 'package:flutter/material.dart';

class SortableProducts extends StatelessWidget {
  const SortableProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.md),
          child: DropdownButtonFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Icons.sort)),
            onChanged: (value) {},
            items: [
              'Name',
              'Higher Price',
              'Lower Price',
              'Sale',
              'Newest',
              'Popularity'
            ]
                .map(
                  (option) => DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  ),
                )
                .toList(),
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwSections),
        GridLayout(
          itemCount: 6,
          itemBuilder: (_, index) => const VerticalProductCard(),
        ),
        const SizedBox(height: Sizes.spaceBtwSections),
      ],
    );
  }
}
