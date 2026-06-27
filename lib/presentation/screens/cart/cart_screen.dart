import 'package:flutter/material.dart';

import '../../../data/models/models.dart';
import '../../../data/services/services.dart';
import '../../../shared/shared.dart';
import '../checkout/checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = CartController.instance;

    return AppScaffold(
      body: AnimatedBuilder(
        animation: cart,
        builder: (context, _) {
          if (cart.isEmpty) {
            return const AppEmpty(
              title: 'Tu carrito est\u00E1 vac\u00EDo',
              message:
                  'Agrega tus postres favoritos para ver el total aqu\u00ED.',
              icon: AppIcons.cart,
            );
          }

          return ListView(
            children: [
              AppCard(
                backgroundColor: AppColors.softPink,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundColor: AppColors.white,
                      child: Icon(AppIcons.cart, color: AppColors.primaryPink),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Carrito',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: AppSpacing.xs),
                          Text(
                            '${cart.totalItems} producto(s) en tu pedido',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    TextButton.icon(
                      onPressed: cart.clear,
                      icon: const Icon(Icons.delete_sweep_outlined),
                      label: const Text('Vaciar'),
                      style: TextButton.styleFrom(
                        foregroundColor: AppColors.error,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              for (final item in cart.items) ...[
                _CartItemCard(item: item, cart: cart),
                const SizedBox(height: AppSpacing.md),
              ],
              const SizedBox(height: AppSpacing.sm),
              _CartSummary(total: cart.total),
            ],
          );
        },
      ),
    );
  }
}

class _CartItemCard extends StatelessWidget {
  const _CartItemCard({required this.item, required this.cart});

  final CartItem item;
  final CartController cart;

  @override
  Widget build(BuildContext context) {
    final product = item.product;

    return AppCard(
      backgroundColor: AppColors.vanilla,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 64,
                height: 64,
                decoration: BoxDecoration(
                  color: AppColors.softPink,
                  borderRadius: BorderRadius.circular(AppRadius.md),
                ),
                child: Icon(
                  _iconFor(product.imagePlaceholder),
                  color: AppColors.primaryPink,
                ),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      product.categoryName,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () => cart.removeProduct(product.id),
                icon: const Icon(Icons.delete_outline),
                color: AppColors.error,
                tooltip: 'Eliminar producto',
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          Row(
            children: [
              Expanded(child: PriceWidget(price: item.subtotal)),
              QuantitySelector(
                value: item.quantity,
                onChanged: (quantity) {
                  cart.updateQuantity(product.id, quantity);
                },
              ),
            ],
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
      _ => AppIcons.cake,
    };
  }
}

class _CartSummary extends StatelessWidget {
  const _CartSummary({required this.total});

  final double total;

  @override
  Widget build(BuildContext context) {
    return AppCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'Total',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              PriceWidget(price: total, textAlign: TextAlign.end),
            ],
          ),
          const SizedBox(height: AppSpacing.lg),
          AppButton(
            label: 'Continuar pedido',
            icon: Icons.arrow_forward,
            expand: true,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(builder: (_) => const CheckoutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
