import 'package:flutter/material.dart';

import '../../widgets/simple_tab_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleTabContent(
      icon: Icons.cake_outlined,
      title: 'Inicio',
      description: 'Bienvenida a Kal\u00FA Pasteler\u00EDa Casera.',
    );
  }
}
