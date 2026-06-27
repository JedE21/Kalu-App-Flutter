import 'package:flutter/material.dart';

import '../../../data/models/models.dart';
import '../../../data/services/services.dart';
import '../../../shared/shared.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({required this.product, super.key});

  final ProductModel product;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    final product = widget.product;
    final favorites = FavoriteController.instance;

    return AppScaffold(
      title: 'Detalle',
      actions: [
        AnimatedBuilder(
          animation: favorites,
          builder: (context, _) {
            return FavoriteButton(
              isFavorite: favorites.isFavorite(product.id),
              onPressed: () => favorites.toggleProduct(product),
            );
          },
        ),
      ],
      body: ListView(
        children: [
          _ProductImagePlaceholder(product: product),
          const SizedBox(height: AppSpacing.lg),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.categoryName,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  product.name,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: AppSpacing.md),
                PriceWidget(price: product.price, oldPrice: product.oldPrice),
                const SizedBox(height: AppSpacing.lg),
                _AvailabilityBadge(isAvailable: product.isAvailable),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SectionTitle(title: 'Descripci\u00F3n'),
                const SizedBox(height: AppSpacing.sm),
                Text(
                  product.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppCard(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Cantidad',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                QuantitySelector(
                  value: _quantity,
                  onChanged: (value) {
                    setState(() {
                      _quantity = value;
                    });
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          AppButton(
            label: 'Agregar al carrito',
            icon: AppIcons.cart,
            expand: true,
            onPressed: product.isAvailable ? _addToCart : null,
          ),
          const SizedBox(height: AppSpacing.md),
          AppButton(
            label: 'Pedir por WhatsApp',
            icon: Icons.chat_outlined,
            variant: AppButtonVariant.outline,
            expand: true,
            onPressed: product.isAvailable ? () {} : null,
          ),
        ],
      ),
    );
  }

  void _addToCart() {
    CartController.instance.addProduct(widget.product, quantity: _quantity);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${widget.product.name} agregado al carrito'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

class _ProductImagePlaceholder extends StatelessWidget {
  const _ProductImagePlaceholder({required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.25,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.softPink,
          borderRadius: AppRadius.banner,
        ),
        child: Icon(
          _iconFor(product.imagePlaceholder),
          color: AppColors.primaryPink,
          size: 88,
        ),
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

class _AvailabilityBadge extends StatelessWidget {
  const _AvailabilityBadge({required this.isAvailable});

  final bool isAvailable;

  @override
  Widget build(BuildContext context) {
    final color = isAvailable ? AppColors.success : AppColors.error;
    final text = isAvailable ? 'Disponible' : 'No disponible';

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(AppRadius.pill),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: color,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
