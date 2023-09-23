import 'package:flutter/material.dart';
import 'package:flutter_app/design/color.dart';

class AppThemes {
  AppThemes._();
  static ThemeData defaultTheme = ThemeData(
    fontFamily: 'RobotoMono',
    primaryColor: AppColors.brandPrimaryColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 48.0,
          fontWeight: FontWeight.bold,
          color: AppColors.brandLightColor),
      displayMedium: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.bold,
          color: AppColors.brandLightColor),
      displaySmall: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: AppColors.brandLightColor),
      headlineLarge:
          TextStyle(fontSize: 21.0, color: AppColors.brandPrimaryColor),
      bodyLarge: TextStyle(fontSize: 14.0),
      bodyMedium: TextStyle(fontSize: 13.0),
      bodySmall: TextStyle(fontSize: 10.0),
    ),
  );
}
