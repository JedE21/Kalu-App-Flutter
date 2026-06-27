import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../favorites/favorites_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        const SectionTitle(title: 'Perfil'),
        const SizedBox(height: AppSpacing.sm),
        Text(
          'La informaci\u00F3n del cliente se agregar\u00E1 luego.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: AppSpacing.lg),
        AppCard(
          onTap: () => _openFavorites(context),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.softPink,
                child: Icon(AppIcons.favorite, color: AppColors.primaryPink),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Favoritos',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: AppSpacing.xs),
                    Text(
                      'Revisa los postres que guardaste.',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right, color: AppColors.textSecondary),
            ],
          ),
        ),
      ],
    );
  }

  void _openFavorites(BuildContext context) {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const FavoritesScreen()));
  }
}
