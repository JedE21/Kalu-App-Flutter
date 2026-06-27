import 'package:flutter/material.dart';

import '../../../shared/shared.dart';
import '../cart/cart_screen.dart';
import '../categories/categories_screen.dart';
import '../home/home_screen.dart';
import '../orders/orders_screen.dart';
import '../profile/profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    OrdersScreen(),
    ProfileScreen(),
  ];

  static const List<String> _titles = [
    'Inicio',
    'Categor\u00EDas',
    'Carrito',
    'Pedidos',
    'Perfil',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: _titles[_selectedIndex],
      padding: EdgeInsets.zero,
      body: IndexedStack(index: _selectedIndex, children: _screens),
      bottomNavigationBar: BottomNavBar(
        currentIndex: _selectedIndex,
        items: const [
          BottomNavItem(
            icon: AppIcons.home,
            activeIcon: Icons.home,
            label: 'Inicio',
          ),
          BottomNavItem(
            icon: AppIcons.categories,
            activeIcon: Icons.category,
            label: 'Categor\u00EDas',
          ),
          BottomNavItem(
            icon: AppIcons.cart,
            activeIcon: Icons.shopping_cart,
            label: 'Carrito',
          ),
          BottomNavItem(
            icon: AppIcons.orders,
            activeIcon: Icons.receipt_long,
            label: 'Pedidos',
          ),
          BottomNavItem(
            icon: AppIcons.profile,
            activeIcon: Icons.person,
            label: 'Perfil',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}
