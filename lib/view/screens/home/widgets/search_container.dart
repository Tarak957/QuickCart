import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  // final bool showBorder,
  //  showBackGround;
  const SearchContainer({
    super.key,
    required this.hintText,
    this.icon = Icons.search,
    this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
    // this.showBorder = true,
    // this.showBackGround = true,
  });

  @override
  Widget build(BuildContext context) {
    // final dark = HelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // border: showBorder ? Border.all(color: CustomColors.grey) : null,
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.black,
              ),
              hintText: hintText,
              hintStyle: const TextStyle(color: CustomColors.black),
              // border: const OutlineInputBorder(
              //   borderSide: BorderSide(color: CustomColors.white),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
