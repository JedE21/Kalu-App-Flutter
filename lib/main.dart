import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'presentation/screens/splash/splash_screen.dart';

void main() {
  runApp(const KaluApp());
}

class KaluApp extends StatelessWidget {
  const KaluApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kal\u00FA App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
