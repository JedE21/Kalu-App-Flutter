import 'package:flutter/material.dart';

import '../../../shared/shared.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'Contacto',
      body: ListView(
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
                      child: Icon(AppIcons.cake, color: AppColors.primaryPink),
                    ),
                    const SizedBox(width: AppSpacing.lg),
                    Expanded(
                      child: Text(
                        'Kal\u00FA Pasteler\u00EDa Casera',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.md),
                Text(
                  'Postres caseros, tortas y dulces para compartir en Ica.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.xl),
          const SectionTitle(title: 'Datos del negocio'),
          const SizedBox(height: AppSpacing.md),
          ContactInfoCard(
            title: 'WhatsApp',
            value: 'Canal para pedidos y consultas.',
            icon: Icons.chat_outlined,
            onTap: () => _showPreparedAction(context, 'WhatsApp'),
          ),
          const SizedBox(height: AppSpacing.md),
          const ContactInfoCard(
            title: 'Zona de atenci\u00F3n',
            value: 'Ica',
            icon: Icons.location_on_outlined,
          ),
          const SizedBox(height: AppSpacing.md),
          const ContactInfoCard(
            title: 'Horario de atenci\u00F3n',
            value: 'Lunes a s\u00E1bado, horario referencial por confirmar.',
            icon: Icons.schedule_outlined,
          ),
          const SizedBox(height: AppSpacing.xl),
          const SectionTitle(title: 'Redes sociales'),
          const SizedBox(height: AppSpacing.md),
          Wrap(
            spacing: AppSpacing.md,
            runSpacing: AppSpacing.md,
            children: [
              SocialButton(
                label: 'Instagram',
                icon: Icons.camera_alt_outlined,
                onPressed: () => _showPreparedAction(context, 'Instagram'),
              ),
              SocialButton(
                label: 'Facebook',
                icon: Icons.facebook_outlined,
                onPressed: () => _showPreparedAction(context, 'Facebook'),
              ),
              SocialButton(
                label: 'TikTok',
                icon: Icons.music_note_outlined,
                onPressed: () => _showPreparedAction(context, 'TikTok'),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          AppCard(
            backgroundColor: AppColors.vanilla,
            child: AppButton(
              label: 'Escribir por WhatsApp',
              icon: Icons.chat_outlined,
              expand: true,
              onPressed: () => _showPreparedAction(context, 'WhatsApp'),
            ),
          ),
        ],
      ),
    );
  }

  void _showPreparedAction(BuildContext context, String channel) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '$channel quedar\u00E1 conectado cuando se agregue el enlace oficial.',
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
