import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class BillingAddress extends StatelessWidget {
  const BillingAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Tarak', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: CustomColors.grey, size: 16),
            const SizedBox(width: Sizes.spaceBtwItems),
            Text(
              '+911919191919',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_city, color: CustomColors.grey, size: 16),
            const SizedBox(width: Sizes.spaceBtwItems),
            Expanded(
              child: Text(
                'asdfghjk iuytrews wedfghjkn lkiuytfrde jhsdfgh kjs',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            )
          ],
        ),
      ],
    );
  }
}
