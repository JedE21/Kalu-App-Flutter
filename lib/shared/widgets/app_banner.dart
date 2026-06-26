import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'app_button.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({
    required this.title,
    required this.subtitle,
    this.buttonText,
    this.onPressed,
    this.icon = AppIcons.dessert,
    super.key,
  });

  final String title;
  final String subtitle;
  final String? buttonText;
  final VoidCallback? onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: BoxDecoration(
        color: AppColors.primaryPink,
        borderRadius: AppRadius.banner,
        boxShadow: AppShadow.soft,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: textTheme.titleLarge?.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  subtitle,
                  style: textTheme.bodyLarge?.copyWith(color: AppColors.white),
                ),
                if (buttonText != null) ...[
                  const SizedBox(height: AppSpacing.lg),
                  AppButton(
                    label: buttonText!,
                    onPressed: onPressed,
                    variant: AppButtonVariant.secondary,
                  ),
                ],
              ],
            ),
          ),
          const SizedBox(width: AppSpacing.lg),
          CircleAvatar(
            radius: 34,
            backgroundColor: AppColors.blushPink,
            child: Icon(icon, color: AppColors.primaryPink, size: 34),
          ),
        ],
      ),
    );
  }
}
