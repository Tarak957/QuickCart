import 'package:ecommerce/view/utils/constants/image_strings.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Sports'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              RoundedImage(
                image: ImageStrings.promoBanner3,
                width: double.infinity,
                applyImageradius: true,
              ),
              SizedBox(height: Sizes.spaceBtwSections),
              Column(
                children: [
                  SectionHeading(title: 'Sports shirts'),
                  SizedBox(height: Sizes.spaceBtwItems / 2),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
