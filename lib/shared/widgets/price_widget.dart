import 'package:flutter/material.dart';

import '../theme/theme.dart';
import '../utils/formatters.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    required this.price,
    this.oldPrice,
    this.textAlign,
    super.key,
  });

  final num price;
  final num? oldPrice;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: textAlign == TextAlign.center
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        Text(
          AppFormatters.price(price),
          textAlign: textAlign,
          style: textTheme.titleLarge?.copyWith(color: AppColors.primaryPink),
        ),
        if (oldPrice != null)
          Text(
            AppFormatters.price(oldPrice!),
            textAlign: textAlign,
            style: textTheme.bodyMedium?.copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
      ],
    );
  }
}
