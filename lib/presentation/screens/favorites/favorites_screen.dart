import 'package:flutter/material.dart';

import '../../../data/models/models.dart';
import '../../../data/services/services.dart';
import '../../../shared/shared.dart';
import '../products/product_detail_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = FavoriteController.instance;

    return AppScaffold(
      title: 'Favoritos',
      body: AnimatedBuilder(
        animation: favorites,
        builder: (context, _) {
          if (favorites.isEmpty) {
            return const AppEmpty(
              title: 'A\u00FAn no tienes productos favoritos',
              message:
                  'Guarda tus postres preferidos para encontrarlos r\u00E1pido',
              icon: AppIcons.favoriteBorder,
            );
          }

          return _FavoritesGrid(products: favorites.products);
        },
      ),
    );
  }
}

class _FavoritesGrid extends StatelessWidget {
  const _FavoritesGrid({required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    final favorites = FavoriteController.instance;

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppCard(
                backgroundColor: AppColors.softPink,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: Icon(
                        AppIcons.favorite,
                        color: AppColors.primaryPink,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Text(
                        'Tus postres guardados para volver a encontrarlos r\u00E1pido.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              const SectionTitle(title: 'Favoritos'),
              const SizedBox(height: AppSpacing.md),
            ],
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            final product = products[index];

            return ProductCard(
              name: product.name,
              price: product.price,
              oldPrice: product.oldPrice,
              category: product.categoryName,
              icon: _iconFor(product.imagePlaceholder),
              isFavorite: favorites.isFavorite(product.id),
              onTap: () => _openDetail(context, product),
              onAddTap: () {},
              onFavoriteTap: () => favorites.removeProduct(product.id),
            );
          }, childCount: products.length),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: AppResponsive.productColumns(context),
            mainAxisSpacing: AppSpacing.md,
            crossAxisSpacing: AppSpacing.md,
            childAspectRatio: 0.68,
          ),
        ),
      ],
    );
  }

  void _openDetail(BuildContext context, ProductModel product) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => ProductDetailScreen(product: product),
      ),
    );
  }

  IconData _iconFor(String iconName) {
    return switch (iconName) {
      'dessert' => AppIcons.dessert,
      'cake' => AppIcons.cake,
      'bakery' => Icons.bakery_dining_outlined,
      'cookie' => Icons.cookie_outlined,
      _ => AppIcons.cake,
    };
  }
}
