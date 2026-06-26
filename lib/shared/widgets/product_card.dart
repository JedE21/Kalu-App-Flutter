import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'price_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.name,
    required this.price,
    required this.category,
    this.oldPrice,
    this.image,
    this.icon = AppIcons.cake,
    this.onTap,
    this.onAddTap,
    super.key,
  });

  final String name;
  final num price;
  final String category;
  final num? oldPrice;
  final Widget? image;
  final IconData icon;
  final VoidCallback? onTap;
  final VoidCallback? onAddTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Material(
      color: AppColors.white,
      borderRadius: AppRadius.card,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadius.card,
        child: Padding(
          padding: const EdgeInsets.all(AppSpacing.md),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.softPink,
                    borderRadius: BorderRadius.circular(AppRadius.md),
                  ),
                  child: image ?? Icon(icon, color: AppColors.primaryPink),
                ),
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                category,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: textTheme.bodyMedium,
              ),
              const SizedBox(height: AppSpacing.xs),
              Text(
                name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: textTheme.titleMedium,
              ),
              const SizedBox(height: AppSpacing.sm),
              Row(
                children: [
                  Expanded(
                    child: PriceWidget(price: price, oldPrice: oldPrice),
                  ),
                  IconButton.filled(
                    onPressed: onAddTap,
                    icon: const Icon(AppIcons.add),
                    iconSize: 18,
                    constraints: const BoxConstraints.tightFor(
                      width: 36,
                      height: 36,
                    ),
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.primaryPink,
                      foregroundColor: AppColors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
