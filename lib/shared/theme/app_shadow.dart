import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppShadow {
  const AppShadow._();

  static const List<BoxShadow> soft = [
    BoxShadow(color: AppColors.shadow, blurRadius: 18, offset: Offset(0, 8)),
  ];

  static const List<BoxShadow> subtle = [
    BoxShadow(color: AppColors.shadow, blurRadius: 10, offset: Offset(0, 4)),
  ];
}
