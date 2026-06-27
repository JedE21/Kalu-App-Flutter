import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../contact/contact_screen.dart';
import '../favorites/favorites_screen.dart';
import '../orders/orders_screen.dart';
import '../promotions/promotions_screen.dart';
import '../settings/settings_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        AppCard(
          backgroundColor: AppColors.softPink,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: AppColors.white,
                    child: Icon(AppIcons.profile, color: AppColors.primaryPink),
                  ),
                  const SizedBox(width: AppSpacing.lg),
                  Expanded(
                    child: Text(
                      'Hola, bienvenido a Kal\u00FA',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Text(
                'Tus postres favoritos, promociones, contacto y opciones de la app en un solo lugar.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xl),
        const SectionTitle(title: 'Accesos r\u00E1pidos'),
        const SizedBox(height: AppSpacing.md),
        ProfileMenuItem(
          title: 'Mis pedidos',
          subtitle: 'Revisa el estado informativo de tus pedidos.',
          icon: AppIcons.orders,
          onTap: () => _openOrders(context),
        ),
        const SizedBox(height: AppSpacing.md),
        ProfileMenuItem(
          title: 'Favoritos',
          subtitle: 'Encuentra r\u00E1pido los postres que guardaste.',
          icon: AppIcons.favorite,
          onTap: () => _openFavorites(context),
        ),
        const SizedBox(height: AppSpacing.md),
        ProfileMenuItem(
          title: 'Promociones',
          subtitle: 'Mira ofertas, combos y postres destacados.',
          icon: Icons.local_offer_outlined,
          onTap: () => _openPromotions(context),
        ),
        const SizedBox(height: AppSpacing.md),
        ProfileMenuItem(
          title: 'Contacto',
          subtitle: 'WhatsApp, redes sociales y datos de atenci\u00F3n.',
          icon: Icons.support_agent_outlined,
          onTap: () => _openContact(context),
        ),
        const SizedBox(height: AppSpacing.md),
        ProfileMenuItem(
          title: 'Configuraci\u00F3n b\u00E1sica',
          subtitle: 'Opciones informativas y datos de la app.',
          icon: Icons.settings_outlined,
          onTap: () => _openSettings(context),
        ),
      ],
    );
  }

  void _openOrders(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const _OrdersRoute()));
  }

  void _openFavorites(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const FavoritesScreen()));
  }

  void _openPromotions(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const PromotionsScreen()));
  }

  void _openContact(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const ContactScreen()));
  }

  void _openSettings(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const SettingsScreen()));
  }
}

class _OrdersRoute extends StatelessWidget {
  const _OrdersRoute();

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(title: 'Mis pedidos', body: OrdersScreen());
  }
}
