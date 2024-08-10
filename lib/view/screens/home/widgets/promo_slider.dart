import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/controllers/home_controller.dart';
import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:ecommerce/view/widgets/images/rounded_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  final List<String> banners;
  const PromoSlider({
    super.key,
    required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final homeController = Get.find<HomeController>();
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImage(image: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) =>
                homeController.updatePageIndicator(index),
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(Sizes.sm),
          child: Container(
            height: 20,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Sizes.md),
              color: Colors.black.withOpacity(0.8),
            ),
            child: Obx(
              () => Row(
                children: [
                  for (int i = 0; i < 3; i++)
                    Container(
                      width: 10,
                      height: 10,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: homeController.currentCarouselIndex.value == i
                            ? CustomColors.primaryPurple
                            : Colors.white,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
