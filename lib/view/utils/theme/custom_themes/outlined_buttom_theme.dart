import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButtonTheme {
  //!Light theme
  static final lightTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 3,
      foregroundColor: CustomColors.black,
      side: BorderSide(color: CustomColors.primaryPurple),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: TextStyle(
        fontSize: 16,
        color: CustomColors.primaryPurple,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
  );
  //!Dark theme
  static final darkTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 3,
      foregroundColor: CustomColors.white,
      side: const BorderSide(color: CustomColors.white),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
          fontSize: 16, color: CustomColors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
  );
}
