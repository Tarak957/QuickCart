import 'package:ecommerce/view/screens/brands/brand_products.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/brands/brand_card.dart';
import 'package:ecommerce/view/widgets/layouts/grid_layout.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Brands',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(height: Sizes.spaceBtwItems),
              GridLayout(
                itemCount: 14,
                mainAxisExtent: 70,
                itemBuilder: (context, index) => BrandCard(
                  showBorder: true,
                  onTap: () => Get.to(const BrandProducts()),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
