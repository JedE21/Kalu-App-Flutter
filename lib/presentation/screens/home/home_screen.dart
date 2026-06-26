import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

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

  static const List<_HomeProduct> _bestSellers = [
    _HomeProduct(
      name: 'Torta de Chocolate',
      price: 'S/ 45.00',
      category: 'Tortas 1 kg',
      icon: Icons.cake_outlined,
    ),
    _HomeProduct(
      name: 'Tres Leches',
      price: 'S/ 8.00',
      category: 'Cuchareables',
      icon: Icons.icecream_outlined,
    ),
    _HomeProduct(
      name: 'Pie de Lim\u00F3n',
      price: 'S/ 35.00',
      category: 'Pies',
      icon: Icons.bakery_dining_outlined,
    ),
    _HomeProduct(
      name: 'Bocaditos Dulces',
      price: 'S/ 28.00',
      category: 'Bocaditos',
      icon: Icons.cookie_outlined,
    ),
  ];

  static const List<_HomeProduct> _promotions = [
    _HomeProduct(
      name: 'Cuchareable de Maracuy\u00E1',
      price: 'S/ 7.00',
      category: 'Promociones',
      icon: Icons.local_cafe_outlined,
    ),
    _HomeProduct(
      name: 'Torta Sublime',
      price: 'S/ 42.00',
      category: 'Promociones',
      icon: Icons.cake_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _Greeting(),
            const SizedBox(height: 16),
            const _SearchBox(),
            const SizedBox(height: 18),
            const _PromoBanner(),
            const SizedBox(height: 22),
            const _SectionTitle(title: 'Categor\u00EDas'),
            const SizedBox(height: 12),
            _CategoryList(categories: _categories),
            const SizedBox(height: 24),
            const _SectionTitle(title: 'M\u00E1s vendidos'),
            const SizedBox(height: 12),
            const _ProductGrid(products: _bestSellers),
            const SizedBox(height: 24),
            const _SectionTitle(title: 'Promociones'),
            const SizedBox(height: 12),
            const _ProductGrid(products: _promotions),
          ],
        ),
      ),
    );
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
        Text('Kal\u00FA Pasteler\u00EDa Casera', style: textTheme.bodyMedium),
        const SizedBox(height: 4),
        Text(
          'Hola, \u00BFqu\u00E9 postre se te antoja hoy?',
          style: textTheme.headlineMedium,
        ),
      ],
    );
  }
}

class _SearchBox extends StatelessWidget {
  const _SearchBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: AppColors.lightPink),
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: AppColors.primaryPink),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              'Buscar tortas, cuchareables, pies...',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}

class _PromoBanner extends StatelessWidget {
  const _PromoBanner();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.primaryPink,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Promoci\u00F3n del d\u00EDa',
                  style: textTheme.titleLarge?.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 6),
                Text(
                  'Cuchareables desde S/ 7.00',
                  style: textTheme.bodyLarge?.copyWith(color: AppColors.white),
                ),
                const SizedBox(height: 14),
                FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.primaryPink,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                  ),
                  child: const Text('Ver ofertas'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              color: AppColors.lightPink,
              borderRadius: BorderRadius.circular(22),
            ),
            child: const Icon(
              Icons.icecream_outlined,
              color: AppColors.primaryPink,
              size: 38,
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: Theme.of(context).textTheme.titleLarge);
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({required this.categories});

  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 104,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return _CategoryCard(label: categories[index]);
        },
      ),
    );
  }
}

class _CategoryCard extends StatelessWidget {
  const _CategoryCard({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 112,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: AppColors.lightPink),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cake_outlined,
                color: AppColors.primaryPink,
                size: 28,
              ),
              const SizedBox(height: 8),
              Text(
                label,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProductGrid extends StatelessWidget {
  const _ProductGrid({required this.products});

  final List<_HomeProduct> products;

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
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.74,
          ),
          itemBuilder: (context, index) {
            return _ProductCard(product: products[index]);
          },
        );
      },
    );
  }
}

class _ProductCard extends StatelessWidget {
  const _ProductCard({required this.product});

  final _HomeProduct product;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.cream,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  product.icon,
                  color: AppColors.primaryPink,
                  size: 44,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              product.category,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyMedium,
            ),
            const SizedBox(height: 4),
            Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: Text(
                    product.price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleLarge?.copyWith(
                      color: AppColors.primaryPink,
                      fontSize: 18,
                    ),
                  ),
                ),
                IconButton.filled(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
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
    );
  }
}

class _HomeProduct {
  const _HomeProduct({
    required this.name,
    required this.price,
    required this.category,
    required this.icon,
  });

  final String name;
  final String price;
  final String category;
  final IconData icon;
}
