import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomElevatedButtomTheme {
  //!Light theme
  static final lightTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CustomColors.white,
      backgroundColor: CustomColors.primaryPurple,
      disabledForegroundColor: CustomColors.grey,
      disabledBackgroundColor: CustomColors.grey,
      side: BorderSide(color: CustomColors.primaryPurple),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
  );
  //!Dark theme
  static final darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: CustomColors.white,
      backgroundColor: CustomColors.white,
      disabledForegroundColor: CustomColors.grey,
      disabledBackgroundColor: CustomColors.grey,
      side: const BorderSide(color: CustomColors.white),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    ),
  );
}
