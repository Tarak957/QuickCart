import 'package:ecommerce/view/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final VoidCallback? onTap;
  const SearchContainer({
    super.key,
    required this.hintText,
    this.icon = Icons.search,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: Colors.black,
              ),
              hintText: 'Search Items',
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
