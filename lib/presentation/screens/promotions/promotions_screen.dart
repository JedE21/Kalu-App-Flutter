import 'package:flutter/material.dart';

import '../../../data/mock/mock_data.dart';
import '../../../data/models/models.dart';
import '../../../shared/shared.dart';
import '../products/product_detail_screen.dart';

class PromotionsScreen extends StatelessWidget {
  const PromotionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Promociones',
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBanner(
                  title: 'Promociones Kal\u00FA',
                  subtitle:
                      'Ofertas, combos y postres destacados por tiempo limitado.',
                  icon: Icons.local_offer_outlined,
                ),
                const SizedBox(height: AppSpacing.xl),
                const SectionTitle(title: 'Ofertas disponibles'),
                const SizedBox(height: AppSpacing.md),
              ],
            ),
          ),
          SliverList.separated(
            itemCount: mockPromotions.length,
            separatorBuilder: (_, _) => const SizedBox(height: AppSpacing.md),
            itemBuilder: (context, index) {
              final promotion = mockPromotions[index];

              return _PromotionCard(
                promotion: promotion,
                onTap: () => _openPromotion(context, promotion),
              );
            },
          ),
        ],
      ),
    );
  }

  void _openPromotion(BuildContext context, PromotionModel promotion) {
    final product = _firstLinkedProduct(promotion);

    if (product != null) {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => ProductDetailScreen(product: product),
        ),
      );
      return;
    }

    showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(promotion.title),
          content: Text(
            '${promotion.subtitle}\n\nLa acci\u00F3n de esta promoci\u00F3n quedar\u00E1 '
            'preparada para una siguiente mejora.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  ProductModel? _firstLinkedProduct(PromotionModel promotion) {
    for (final productId in promotion.productIds) {
      for (final product in mockProducts) {
        if (product.id == productId) return product;
      }
    }

    return null;
  }
}

class _PromotionCard extends StatelessWidget {
  const _PromotionCard({required this.promotion, required this.onTap});

  final PromotionModel promotion;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return AppCard(
      onTap: onTap,
      padding: EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 2.7,
            child: DecoratedBox(
              decoration: const BoxDecoration(
                color: AppColors.softPink,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(AppRadius.lg),
                ),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Icon(
                      _iconFor(promotion.imagePlaceholder),
                      color: AppColors.primaryPink,
                      size: 56,
                    ),
                  ),
                  Positioned(
                    left: AppSpacing.md,
                    top: AppSpacing.md,
                    child: _PromoBadge(text: promotion.badgeText),
                  ),
                  Positioned(
                    right: AppSpacing.md,
                    top: AppSpacing.md,
                    child: _StatusBadge(isActive: promotion.isActive),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(promotion.title, style: textTheme.titleLarge),
                const SizedBox(height: AppSpacing.sm),
                Text(promotion.subtitle, style: textTheme.bodyMedium),
                const SizedBox(height: AppSpacing.lg),
                Row(
                  children: [
                    if (promotion.price != null)
                      Expanded(
                        child: PriceWidget(
                          price: promotion.price!,
                          oldPrice: promotion.oldPrice,
                        ),
                      )
                    else
                      const Spacer(),
                    AppButton(
                      label: promotion.productIds.isEmpty
                          ? 'Ver promoci\u00F3n'
                          : 'Ver promoci\u00F3n',
                      icon: Icons.local_offer_outlined,
                      onPressed: onTap,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  IconData _iconFor(String iconName) {
    return switch (iconName) {
      'dessert' => AppIcons.dessert,
      'cake' => AppIcons.cake,
      'bakery' => Icons.bakery_dining_outlined,
      'cookie' => Icons.cookie_outlined,
      _ => Icons.local_offer_outlined,
    };
  }
}

class _PromoBadge extends StatelessWidget {
  const _PromoBadge({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.pastelYellow,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: AppColors.cocoa,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final color = isActive ? AppColors.success : AppColors.textSecondary;
    final text = isActive ? 'Activa' : 'Pausada';

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.md,
          vertical: AppSpacing.xs,
        ),
        child: Text(
          text,
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
