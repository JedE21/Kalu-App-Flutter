import 'package:flutter/material.dart';

import '../../widgets/simple_tab_content.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SimpleTabContent(
      icon: Icons.receipt_long_outlined,
      title: 'Pedidos',
      description: 'Aqu\u00ED aparecer\u00E1 el seguimiento de pedidos.',
    );
  }
}
