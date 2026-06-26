import 'package:flutter/material.dart';

import '../../widgets/simple_tab_content.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleTabContent(
      icon: Icons.person_outline,
      title: 'Perfil',
      description: 'La informaci\u00F3n del cliente se agregar\u00E1 luego.',
    );
  }
}
