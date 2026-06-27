import 'package:flutter/material.dart';

import '../theme/theme.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    required this.isFavorite,
    required this.onPressed,
    this.tooltip,
    this.size = 40,
    super.key,
  });

  final bool isFavorite;
  final VoidCallback? onPressed;
  final String? tooltip;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      shape: const CircleBorder(),
      child: IconButton(
        onPressed: onPressed,
        tooltip:
            tooltip ?? (isFavorite ? 'Quitar favorito' : 'Agregar favorito'),
        icon: Icon(isFavorite ? AppIcons.favorite : AppIcons.favoriteBorder),
        color: isFavorite ? AppColors.primaryPink : AppColors.textSecondary,
        iconSize: size * 0.55,
        constraints: BoxConstraints.tightFor(width: size, height: size),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
      ),
    );
  }
}
