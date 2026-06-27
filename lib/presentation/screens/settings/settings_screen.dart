import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Configuracion',
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          AppCard(
            backgroundColor: AppColors.softPink,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.white,
                  child: Icon(
                    Icons.settings_outlined,
                    color: AppColors.primaryPink,
                  ),
                ),
                const SizedBox(width: AppSpacing.md),
                Expanded(
                  child: Text(
                    'Ajustes informativos preparados para futuras versiones.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          const SectionTitle(title: 'Opciones'),
          const SizedBox(height: AppSpacing.md),
          SettingsMenuItem(
            title: 'Notificaciones',
            subtitle: 'Disponible en una proxima version.',
            icon: Icons.notifications_outlined,
            onTap: () => _showComingSoon(context),
          ),
          const SizedBox(height: AppSpacing.md),
          SettingsMenuItem(
            title: 'Tema de la app',
            subtitle: 'Disponible en una proxima version.',
            icon: Icons.palette_outlined,
            onTap: () => _showComingSoon(context),
          ),
          const SizedBox(height: AppSpacing.md),
          SettingsMenuItem(
            title: 'Privacidad',
            subtitle: 'Informacion legal preparada para una siguiente fase.',
            icon: Icons.privacy_tip_outlined,
            onTap: () => _showComingSoon(context),
          ),
          const SizedBox(height: AppSpacing.md),
          SettingsMenuItem(
            title: 'Terminos y condiciones',
            subtitle: 'Disponible en una proxima version.',
            icon: Icons.description_outlined,
            onTap: () => _showComingSoon(context),
          ),
          const SizedBox(height: AppSpacing.md),
          SettingsMenuItem(
            title: 'Acerca de Kalu',
            subtitle: 'Informacion del proyecto y la marca.',
            icon: AppIcons.cake,
            onTap: () => _showAboutHint(context),
          ),
          const SizedBox(height: AppSpacing.md),
          const SettingsMenuItem(
            title: 'Version de la app',
            subtitle: '1.0 local en desarrollo.',
            icon: Icons.info_outline,
            trailing: Text(
              '1.0',
              style: TextStyle(
                color: AppColors.primaryPink,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          const SectionTitle(title: 'Acerca de Kalu'),
          const SizedBox(height: AppSpacing.md),
          const InfoSectionCard(
            title: 'Kalu Pasteleria Casera',
            icon: AppIcons.cake,
            items: [
              InfoSectionItem(
                label: 'Aplicacion',
                value: 'App desarrollada en Flutter',
              ),
              InfoSectionItem(label: 'Plataforma inicial', value: 'Android'),
              InfoSectionItem(
                label: 'Estado',
                value: 'Version 1.0 local en desarrollo',
              ),
              InfoSectionItem(label: 'Version de la app', value: '1.0 local'),
            ],
          ),
        ],
      ),
    );
  }

  void _showComingSoon(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Disponible en una proxima version.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  void _showAboutHint(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Revisa la seccion Acerca de Kalu en esta pantalla.'),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
