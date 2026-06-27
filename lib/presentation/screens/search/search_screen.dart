import 'package:flutter/material.dart';

import '../../../data/mock/mock_data.dart';
import '../../../data/models/models.dart';
import '../../../shared/shared.dart';
import '../products/product_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final results = _searchProducts(_query);
    final hasQuery = _query.trim().isNotEmpty;

    return AppScaffold(
      title: 'Buscar',
      body: Column(
        children: [
          AppSearchBar(
            controller: _searchController,
            hintText: 'Buscar tortas, cuchareables, pies...',
            onChanged: (value) {
              setState(() {
                _query = value;
              });
            },
          ),
          const SizedBox(height: AppSpacing.lg),
          Expanded(
            child: hasQuery
                ? _SearchResults(products: results)
                : const AppEmpty(
                    title: 'Busca productos',
                    message: 'Busca tortas, cuchareables, pies o promociones',
                    icon: AppIcons.search,
                  ),
          ),
        ],
      ),
    );
  }

  List<ProductModel> _searchProducts(String query) {
    final normalizedQuery = query.trim().toLowerCase();
    if (normalizedQuery.isEmpty) return const [];

    return mockProducts
        .where((product) {
          return product.name.toLowerCase().contains(normalizedQuery) ||
              product.categoryName.toLowerCase().contains(normalizedQuery) ||
              product.description.toLowerCase().contains(normalizedQuery);
        })
        .toList(growable: false);
  }
}

class _SearchResults extends StatelessWidget {
  const _SearchResults({required this.products});

  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    if (products.isEmpty) {
      return const AppEmpty(
        title: 'No encontramos productos con ese nombre',
        message: 'Prueba con tortas, cuchareables, pies o promociones.',
        icon: AppIcons.search,
      );
    }

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: '${products.length} resultado(s)'),
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
              onTap: () => _openDetail(context, product),
              onAddTap: () {},
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
