import 'package:flutter/material.dart';

import '../../widgets/simple_tab_content.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleTabContent(
      icon: Icons.shopping_cart_outlined,
      title: 'Carrito',
      description: 'El carrito real se implementar\u00E1 m\u00E1s adelante.',
    );
  }
}
