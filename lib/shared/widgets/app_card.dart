import 'package:flutter/material.dart';

import '../theme/theme.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    required this.child,
    this.padding = const EdgeInsets.all(AppSpacing.lg),
    this.onTap,
    this.backgroundColor = AppColors.white,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry padding;
  final VoidCallback? onTap;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: AppRadius.card,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.card,
        child: Container(
          padding: padding,
          decoration: BoxDecoration(
            borderRadius: AppRadius.card,
            boxShadow: AppShadow.subtle,
          ),
          child: child,
        ),
      ),
    );
  }
}
