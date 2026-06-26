import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'app_button.dart';

class AppError extends StatelessWidget {
  const AppError({
    required this.title,
    required this.message,
    this.actionText = 'Reintentar',
    this.onRetry,
    super.key,
  });

  final String title;
  final String message;
  final String? actionText;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(
              radius: 34,
              backgroundColor: AppColors.blushPink,
              child: Icon(AppIcons.error, color: AppColors.error, size: 34),
            ),
            const SizedBox(height: AppSpacing.lg),
            Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: AppSpacing.sm),
            Text(
              message,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium,
            ),
            if (actionText != null) ...[
              const SizedBox(height: AppSpacing.lg),
              AppButton(
                label: actionText!,
                onPressed: onRetry,
                variant: AppButtonVariant.outline,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
