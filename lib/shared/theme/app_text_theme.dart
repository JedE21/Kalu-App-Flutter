import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextTheme {
  const AppTextTheme._();

  static const TextTheme light = TextTheme(
    headlineLarge: TextStyle(
      color: AppColors.darkBrown,
      fontSize: 28,
      fontWeight: FontWeight.w800,
    ),
    headlineMedium: TextStyle(
      color: AppColors.darkBrown,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    titleLarge: TextStyle(
      color: AppColors.darkBrown,
      fontSize: 20,
      fontWeight: FontWeight.w700,
    ),
    titleMedium: TextStyle(
      color: AppColors.textPrimary,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    bodyLarge: TextStyle(color: AppColors.textPrimary, fontSize: 16),
    bodyMedium: TextStyle(color: AppColors.textSecondary, fontSize: 14),
    labelLarge: TextStyle(
      color: AppColors.white,
      fontSize: 14,
      fontWeight: FontWeight.w700,
    ),
  );
}
