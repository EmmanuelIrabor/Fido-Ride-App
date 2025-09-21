import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_typography.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.main, // background
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.main,
      primary: AppColors.main,
      surface: AppColors.main,
      onPrimary: AppColors.white,
      onSurface: AppColors.black,
    ),
    textTheme: AppTypography.textTheme,
    fontFamily: AppTypography.fontFamily,
  );
}
