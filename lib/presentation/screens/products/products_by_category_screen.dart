import 'package:flutter/material.dart';

import '../../../data/mock/mock_data.dart';
import '../../../data/models/models.dart';
import '../../../data/services/services.dart';
import '../../../shared/shared.dart';
import 'product_detail_screen.dart';

class ProductsByCategoryScreen extends StatelessWidget {
  const ProductsByCategoryScreen({required this.category, super.key});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    final products = _productsForCategory(category);
    final favorites = FavoriteController.instance;

    return AppScaffold(
      title: category.name,
      body: products.isEmpty
          ? AppEmpty(
              title: 'Sin productos por ahora',
              message:
                  'Pronto agregaremos postres en la categor\u00EDa ${category.name}.',
              icon: AppIcons.empty,
            )
          : AnimatedBuilder(
              animation: favorites,
              builder: (context, _) {
                return CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                        child: AppCard(
                          backgroundColor: AppColors.softPink,
                          child: Row(
                            children: [
                              const CircleAvatar(
                                backgroundColor: AppColors.white,
                                child: Icon(
                                  AppIcons.dessert,
                                  color: AppColors.primaryPink,
                                ),
                              ),
                              const SizedBox(width: AppSpacing.md),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      category.name,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.titleLarge,
                                    ),
                                    const SizedBox(height: AppSpacing.xs),
                                    Text(
                                      category.description,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
                          onFavoriteTap: () => favorites.toggleProduct(product),
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
              },
            ),
    );
  }

  List<ProductModel> _productsForCategory(CategoryModel category) {
    if (category.id == 'promociones') {
      return mockProducts
          .where((product) => product.isPromotion)
          .toList(growable: false);
    }

    return mockProducts
        .where((product) => product.categoryId == category.id)
        .toList(growable: false);
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
