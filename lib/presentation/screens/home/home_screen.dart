import 'package:flutter/material.dart';

import '../../../data/mock/mock_data.dart';
import '../../../data/models/models.dart';
import '../../../shared/shared.dart';
import '../products/product_detail_screen.dart';
import '../search/search_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const List<String> _categories = [
    'Cuchareables',
    'Tortas 1/4 kg',
    'Tortas 1 kg',
    'Pies',
    'Bocaditos',
    'Promociones',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(
          AppSpacing.lg,
          AppSpacing.sm,
          AppSpacing.lg,
          AppSpacing.xl,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _Greeting(),
            const SizedBox(height: AppSpacing.lg),
            AppSearchBar(
              hintText: 'Buscar tortas, cuchareables, pies...',
              readOnly: true,
              onTap: () => _openSearch(context),
            ),
            const SizedBox(height: AppSpacing.lg),
            AppBanner(
              title: 'Promoci\u00F3n del d\u00EDa',
              subtitle: 'Cuchareables desde S/ 7.00',
              buttonText: 'Ver ofertas',
              onPressed: () {},
              icon: AppIcons.dessert,
            ),
            const SizedBox(height: AppSpacing.xl),
            const SectionTitle(title: 'Categor\u00EDas'),
            const SizedBox(height: AppSpacing.md),
            const _CategoryCarousel(categories: _categories),
            const SizedBox(height: AppSpacing.xl),
            const SectionTitle(title: 'M\u00E1s vendidos'),
            const SizedBox(height: AppSpacing.md),
            _ProductGrid(products: mockBestSellerProducts),
            const SizedBox(height: AppSpacing.xl),
            const SectionTitle(title: 'Promociones'),
            const SizedBox(height: AppSpacing.md),
            _ProductGrid(products: mockPromotionProducts),
          ],
        ),
      ),
    );
  }

  void _openSearch(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const SearchScreen()));
  }
}

class _Greeting extends StatelessWidget {
  const _Greeting();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppConstants.brandName, style: textTheme.bodyMedium),
        const SizedBox(height: AppSpacing.xs),
        Text(
          'Hola, \u00BFqu\u00E9 postre se te antoja hoy?',
          style: textTheme.headlineMedium,
        ),
      ],
    );
  }
}

class _CategoryCarousel extends StatelessWidget {
  const _CategoryCarousel({required this.categories});

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: AppSpacing.sm),
        itemBuilder: (context, index) {
          return CategoryChip(
            label: categories[index],
            selected: index == 0,
            onTap: () {},
          );
        },
      ),
    );
  }
}

class _ProductGrid extends StatelessWidget {
  const _ProductGrid({required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth >= 560 ? 3 : 2;

        return GridView.builder(
          itemCount: products.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: AppSpacing.md,
            crossAxisSpacing: AppSpacing.md,
            childAspectRatio: 0.68,
          ),
          itemBuilder: (context, index) {
            final product = products[index];

            return ProductCard(
              name: product.name,
              category: product.categoryName,
              price: product.price,
              oldPrice: product.oldPrice,
              icon: _iconFor(product.imagePlaceholder),
              onTap: () => _openDetail(context, product),
              onAddTap: () {},
            );
          },
        );
      },
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
