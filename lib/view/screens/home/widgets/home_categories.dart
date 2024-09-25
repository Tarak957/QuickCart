import 'package:ecommerce/view/screens/sub_category/sub_categories.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/image_text_widgets/categories_tile.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
      child: Column(
        children: [
          const SectionHeading(
            title: 'Popular Categories',
            textColor: CustomColors.white,
            showActionButton: false,
          ),
          const SizedBox(height: Sizes.spaceBtwItems),
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTile(
                  image: ImageStrings.shoeIcon,
                  title: 'shoes',
                  onTap: () => Get.to(() => const SubCategoriesScreen()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
