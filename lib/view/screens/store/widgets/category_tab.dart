import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/brands/brand_showcase.dart';
import 'package:ecommerce/view/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/view/widgets/products/product_cards/vertical_product_card.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowCase(
                images: [
                  ImageStrings.productImage1,
                  ImageStrings.productImage2,
                  ImageStrings.productImage3,
                ],
              ),
              SectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const VerticalProductCard();
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
