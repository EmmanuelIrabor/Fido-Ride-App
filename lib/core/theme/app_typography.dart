// core/theme/app_typography.dart
import 'package:flutter/material.dart';

class AppTypography {
  static const String fontFamily = 'Manrope';

  static TextTheme textTheme = const TextTheme(
    headlineLarge: TextStyle(
      fontFamily: fontFamily,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    bodyLarge: TextStyle(fontFamily: fontFamily, fontSize: 16),
  );
}
