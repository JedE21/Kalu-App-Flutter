import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'app_card.dart';

class InfoSectionCard extends StatelessWidget {
  const InfoSectionCard({
    required this.title,
    required this.items,
    this.icon,
    super.key,
  });

  final String title;
  final List<InfoSectionItem> items;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                CircleAvatar(
                  backgroundColor: AppColors.blushPink,
                  child: Icon(icon, color: AppColors.primaryPink),
                ),
                const SizedBox(width: AppSpacing.md),
              ],
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          for (final item in items) ...[
            _InfoRow(item: item),
            if (item != items.last) const Divider(height: AppSpacing.xl),
          ],
        ],
      ),
    );
  }
}

class InfoSectionItem {
  const InfoSectionItem({required this.label, required this.value});

  final String label;
  final String value;
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.item});

  final InfoSectionItem item;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            item.label,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Text(
            item.value,
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
