import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/products/product_cards/rounded_container.dart';
import 'package:flutter/material.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (_, __) => const SizedBox(height: Sizes.spaceBtwItems),
      itemBuilder: (_, index) => RoundedContainer(
        showBorder: true,
        padding: const EdgeInsets.all(Sizes.md),
        backgroundColor: dark ? CustomColors.dark : CustomColors.light,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                const Icon(Icons.local_shipping_outlined),
                const SizedBox(width: Sizes.spaceBtwItems / 2),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: CustomColors.primaryPurple,
                              fontWeightDelta: 1,
                            ),
                      ),
                      Text(
                        '09 Dec 2020',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: Sizes.iconSm,
                  ),
                )
              ],
            ),
            const SizedBox(height: Sizes.spaceBtwItems),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.sell_outlined),
                      const SizedBox(width: Sizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Order',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              'order id',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: Sizes.spaceBtwItems / 2),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Shipping Date',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            Text(
                              '02 mar 2323',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
