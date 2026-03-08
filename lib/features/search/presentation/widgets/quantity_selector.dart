import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Stateful −  qty  + row. Parent receives quantity changes via [onChanged].
class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key, this.initialQuantity = 1, this.onChanged});

  final int initialQuantity;
  final ValueChanged<int>? onChanged;

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  late int _quantity;

  @override
  void initState() {
    super.initState();
    _quantity = widget.initialQuantity;
  }

  void _decrement() {
    if (_quantity <= 1) return;
    setState(() => _quantity--);
    widget.onChanged?.call(_quantity);
  }

  void _increment() {
    setState(() => _quantity++);
    widget.onChanged?.call(_quantity);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
      decoration: BoxDecoration(
        color: AppColors.cream,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        spacing: 6.w,
        children: [
          _StepButton(
            icon: Icons.remove_rounded,
            onTap: _decrement,
            enabled: _quantity > 1,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 25.w),
            child: Text(
              '$_quantity',
              style: AppTextStyles.font12RichBlackWeight600,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          _StepButton(
            icon: Icons.add_rounded,
            onTap: _increment,
            enabled: true,
          ),
        ],
      ),
    );
  }
}

class _StepButton extends StatelessWidget {
  const _StepButton({
    required this.icon,
    required this.onTap,
    required this.enabled,
  });

  final IconData icon;
  final VoidCallback onTap;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: enabled ? onTap : null,
      child: Container(
        width: 22.r,
        height: 22.r,
        decoration: BoxDecoration(
          color: AppColors.lightApricot,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, size: 13.sp, color: AppColors.fieryRed),
      ),
    );
  }
}
