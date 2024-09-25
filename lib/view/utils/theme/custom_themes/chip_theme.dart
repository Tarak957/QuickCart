import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomChipTheme {
  //!Light theme
  static ChipThemeData lightTheme = ChipThemeData(
      disabledColor: CustomColors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: CustomColors.primaryPurple,
      padding: const EdgeInsets.all(12),
      checkmarkColor: CustomColors.white);
  //!Dark theme
  static ChipThemeData darkTheme = ChipThemeData(
    disabledColor: CustomColors.grey,
    labelStyle: const TextStyle(color: CustomColors.white),
    selectedColor: CustomColors.primaryPurple,
    padding: const EdgeInsets.all(12),
    checkmarkColor: CustomColors.white,
  );
}
