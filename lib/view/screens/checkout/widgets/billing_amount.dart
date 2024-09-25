import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmount extends StatelessWidget {
  const BillingAmount({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium),
            Text('300/-', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('10/-', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('10/-', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium),
            Text('30/-', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
