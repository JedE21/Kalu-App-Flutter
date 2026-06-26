import 'package:flutter/material.dart';

import '../theme/theme.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    required this.title,
    this.actionText,
    this.onActionTap,
    super.key,
  });

  final String title;
  final String? actionText;
  final VoidCallback? onActionTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(title, style: Theme.of(context).textTheme.titleLarge),
        ),
        if (actionText != null)
          TextButton(
            onPressed: onActionTap,
            style: TextButton.styleFrom(foregroundColor: AppColors.primaryPink),
            child: Text(actionText!),
          ),
      ],
    );
  }
}
