import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BoxShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: CustomColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2),
  );
}
