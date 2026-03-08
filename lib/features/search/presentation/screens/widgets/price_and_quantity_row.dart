import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/domain/entities/store_item_entity.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/quantity_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceAndQuantityRow extends StatelessWidget {
  const PriceAndQuantityRow({super.key, required this.item});

  final StoreItemEntity item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 120.w),
          child: Text(
            'SAR ${item.priceSar.toStringAsFixed(item.priceSar % 1 == 0 ? 0 : 1)}',
            style: AppTextStyles.font16PrimaryWeight700.copyWith(
              fontSize: 14.sp,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const QuantitySelector(),
      ],
    );
  }
}
