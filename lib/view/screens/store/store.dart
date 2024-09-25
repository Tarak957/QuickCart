import 'package:ecommerce/view/screens/home/widgets/cart_icon.dart';
import 'package:ecommerce/view/screens/home/widgets/search_container.dart';
import 'package:ecommerce/view/screens/store/widgets/category_tab.dart';
import 'package:ecommerce/view/widgets/brands/brand_card.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/utils/helpers/helper_function.dart';
import 'package:ecommerce/view/widgets/appbar/appbar.dart';
import 'package:ecommerce/view/widgets/appbar/tabbar.dart';
import 'package:ecommerce/view/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/view/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
          actions: [
            CartIcon(
              onPressed: () {},
              textColor: dark ? CustomColors.black : CustomColors.white,
              badgeColor: dark ? CustomColors.white : CustomColors.black,
              iconColor: dark ? CustomColors.white : CustomColors.black,
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                pinned: true,
                floating: true,
                backgroundColor: dark ? CustomColors.black : CustomColors.white,
                expandedHeight: 370,
                automaticallyImplyLeading: false,
                flexibleSpace: Padding(
                  padding: EdgeInsets.zero,
                  child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.symmetric(horizontal: Sizes.md),
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      const SizedBox(height: Sizes.spaceBtwItems), //!searchbar
                      const SearchContainer(
                        hintText: 'Search in store',
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(height: Sizes.spaceBtwSections),
                      Padding(
                        padding: const EdgeInsets.symmetric(),
                        child: SectionHeading(
                          title: 'Featured Brands',
                          onPressed: () {},
                        ),
                      ),
                      const SizedBox(height: Sizes.spaceBtwItems),
                      GridLayout(
                        mainAxisExtent: 60,
                        itemCount: 4,
                        padding: EdgeInsets.zero,
                        itemBuilder: (_, index) {
                          return const BrandCard();
                        },
                      ),
                    ],
                  ),
                ),
                bottom: const CustomTabBar(
                  tabs: [
                    Tab(child: Text('sports')),
                    Tab(child: Text('gym')),
                    Tab(child: Text('casual')),
                    Tab(child: Text('electronics')),
                    Tab(child: Text('Furniture')),
                  ],
                ),
              ),
            ];
          },
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
