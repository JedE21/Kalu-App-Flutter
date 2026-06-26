import 'package:flutter/material.dart';

import '../../widgets/simple_tab_content.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleTabContent(
      icon: Icons.category_outlined,
      title: 'Categor\u00EDas',
      description:
          'Aqu\u00ED se mostrar\u00E1n las categor\u00EDas de postres.',
    );
  }
}
