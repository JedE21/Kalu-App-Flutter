import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'app_button.dart';

class AppEmpty extends StatelessWidget {
  const AppEmpty({
    required this.title,
    required this.message,
    this.actionText,
    this.onActionTap,
    this.icon = AppIcons.empty,
    super.key,
  });

  final String title;
  final String message;
  final String? actionText;
  final VoidCallback? onActionTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return _StateMessage(
      icon: icon,
      title: title,
      message: message,
      actionText: actionText,
      onActionTap: onActionTap,
    );
  }
}

class _StateMessage extends StatelessWidget {
  const _StateMessage({
    required this.icon,
    required this.title,
    required this.message,
    this.actionText,
    this.onActionTap,
  });

  final IconData icon;
  final String title;
  final String message;
  final String? actionText;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.xl),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 34,
              backgroundColor: AppColors.blushPink,
              child: Icon(icon, color: AppColors.primaryPink, size: 34),
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
              AppButton(label: actionText!, onPressed: onActionTap),
            ],
          ],
        ),
      ),
    );
  }
}
