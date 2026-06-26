import 'package:flutter/material.dart';

import '../theme/theme.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({
    required this.value,
    required this.onChanged,
    this.min = 1,
    this.max = 99,
    super.key,
  });

  final int value;
  final int min;
  final int max;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final canDecrease = value > min;
    final canIncrease = value < max;

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.pill),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: canDecrease ? () => onChanged(value - 1) : null,
            icon: const Icon(Icons.remove),
            color: AppColors.primaryPink,
            constraints: const BoxConstraints.tightFor(width: 40, height: 40),
          ),
          SizedBox(
            width: 36,
            child: Text(
              '$value',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          IconButton(
            onPressed: canIncrease ? () => onChanged(value + 1) : null,
            icon: const Icon(Icons.add),
            color: AppColors.primaryPink,
            constraints: const BoxConstraints.tightFor(width: 40, height: 40),
          ),
        ],
      ),
    );
  }
}
