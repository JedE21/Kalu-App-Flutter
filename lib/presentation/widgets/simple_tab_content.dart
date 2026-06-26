import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class SimpleTabContent extends StatelessWidget {
  const SimpleTabContent({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  final IconData icon;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SafeArea(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 88,
                height: 88,
                decoration: BoxDecoration(
                  color: AppColors.lightPink,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Icon(icon, color: AppColors.primaryPink, size: 44),
              ),
              const SizedBox(height: 24),
              Text(
                title,
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium,
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                style: textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
