import 'package:ecommerce/view/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/outlined_buttom_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/text_theme.dart';
import 'package:ecommerce/view/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //!Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ProximaNova',
    brightness: Brightness.light,
    primaryColor: Colors.purple[200],
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: CustomAppBarTheme.lightTheme,
    bottomSheetTheme: CustomBottomSheetTheme.lightTheme,
    checkboxTheme: CustomCheckBoxTheme.lightTheme,
    chipTheme: CustomChipTheme.lightTheme,
    elevatedButtonTheme: CustomElevatedButtomTheme.lightTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightTheme,
    textTheme: CustomTextTheme.lightTextTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.lightTheme,
  );
  //!Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'ProximaNova',
    brightness: Brightness.dark,
    primaryColor: Colors.purple[200],
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: CustomAppBarTheme.lightTheme,
    bottomSheetTheme: CustomBottomSheetTheme.darkTheme,
    checkboxTheme: CustomCheckBoxTheme.darkTheme,
    chipTheme: CustomChipTheme.darkTheme,
    elevatedButtonTheme: CustomElevatedButtomTheme.darkTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkTheme,
    textTheme: CustomTextTheme.darkTextTheme,
    inputDecorationTheme: CustomTextFormFieldTheme.darkTheme,
  );
}
