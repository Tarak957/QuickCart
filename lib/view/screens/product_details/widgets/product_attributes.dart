import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/chips/choice_chip.dart';
import 'package:ecommerce/view/widgets/containers/rounded_container.dart';
import 'package:ecommerce/view/widgets/texts/product_price_text.dart';
import 'package:ecommerce/view/widgets/texts/product_title_text.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      children: [
        RoundedContainer(
          padding: const EdgeInsets.all(Sizes.md),
          backgroundColor:
              dark ? CustomColors.dark : CustomColors.grey.withOpacity(0.4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const SectionHeading(
                      title: 'Variation', showActionButton: false),
                  const SizedBox(width: Sizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          ProductTitleText(
                              title: 'Price : ', isSmallSize: true),
                          ProductPriceText(price: '25', isLineThrough: true),
                          SizedBox(width: Sizes.spaceBtwItems),
                          ProductPriceText(price: '20'),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                              title: 'Stock : ', isSmallSize: true),
                          Text(
                            'In Stock',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .apply(color: Colors.green),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const ProductTitleText(
                title:
                    'jkhgfzxdfghjklhjkhgfzxdfghjklhgfdxfcvmnjkhgfzxdfghjklhgfdxfcvmn gfdxfcvmn,bvcxvbn',
                maxLines: 4,
                isSmallSize: true,
              )
            ],
          ),
        ),
        const SizedBox(height: Sizes.spaceBtwItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Colors', showActionButton: false),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Orange',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Pink',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'Purple',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionHeading(title: 'Sizes', showActionButton: false),
            Wrap(
              spacing: 8,
              children: [
                CustomChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 40',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                CustomChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            )
          ],
        ),
        const SizedBox(height: Sizes.spaceBtwSections),
      ],
    );
  }
}
