import 'package:ecommerce/view/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomTextTheme {
  //!Light theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: CustomColors.dark,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: CustomColors.dark,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: CustomColors.dark,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: CustomColors.dark,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: CustomColors.dark,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: CustomColors.dark,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: CustomColors.dark,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: CustomColors.dark,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: CustomColors.dark.withOpacity(0.5),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: CustomColors.black,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: CustomColors.black.withOpacity(0.5),
    ),
  );
  //!Dark Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: CustomColors.light,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: CustomColors.light,
    ),
    headlineSmall: const TextStyle().copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: CustomColors.light,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: CustomColors.light,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: CustomColors.light,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: CustomColors.light,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: CustomColors.light,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: CustomColors.light,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: CustomColors.light.withOpacity(0.5),
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: CustomColors.light,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: CustomColors.light.withOpacity(0.5),
    ),
  );
}
