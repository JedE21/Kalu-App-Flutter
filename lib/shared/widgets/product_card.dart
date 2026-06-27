import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'favorite_button.dart';
import 'price_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.name,
    required this.price,
    required this.category,
    this.oldPrice,
    this.image,
    this.icon = AppIcons.cake,
    this.isFavorite = false,
    this.onTap,
    this.onAddTap,
    this.onFavoriteTap,
    super.key,
  });

  final String name;
  final num price;
  final String category;
  final num? oldPrice;
  final Widget? image;
  final IconData icon;
  final bool isFavorite;
  final VoidCallback? onTap;
  final VoidCallback? onAddTap;
  final VoidCallback? onFavoriteTap;

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
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.softPink,
                          borderRadius: BorderRadius.circular(AppRadius.md),
                        ),
                        child:
                            image ?? Icon(icon, color: AppColors.primaryPink),
                      ),
                    ),
                    if (onFavoriteTap != null)
                      Positioned(
                        top: AppSpacing.sm,
                        right: AppSpacing.sm,
                        child: FavoriteButton(
                          isFavorite: isFavorite,
                          onPressed: onFavoriteTap,
                          size: 36,
                        ),
                      ),
                  ],
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
