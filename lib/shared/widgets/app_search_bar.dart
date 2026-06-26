import 'package:flutter/material.dart';

import '../theme/theme.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({
    this.controller,
    this.hintText = 'Buscar',
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    super.key,
  });

  final TextEditingController? controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: readOnly,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: const Icon(AppIcons.search, color: AppColors.primaryPink),
      ),
    );
  }
}
