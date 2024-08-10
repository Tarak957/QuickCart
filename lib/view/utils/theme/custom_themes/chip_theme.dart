import 'package:flutter/material.dart';

class CustomChipTheme {
  //!Light theme
  static ChipThemeData lightTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.all(12),
      checkmarkColor: Colors.white);
  //!Dark theme
  static ChipThemeData darkTheme = const ChipThemeData(
    disabledColor: Colors.grey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: Colors.blue,
    padding: EdgeInsets.all(12),
    checkmarkColor: Colors.white,
  );
}
