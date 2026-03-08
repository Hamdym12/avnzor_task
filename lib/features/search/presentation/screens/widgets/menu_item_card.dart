import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/domain/entities/store_item_entity.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/add_to_cart_button.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/card_image.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/price_and_quantity_row.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemCard extends StatelessWidget {
  const MenuItemCard({super.key, required this.item, this.onAddToCart});

  final StoreItemEntity item;
  final ValueChanged<StoreItemEntity>? onAddToCart;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.xxl16),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackTransparent10,
            blurRadius: 4,
            spreadRadius: -2,
            offset: Offset(0, 2),
          ),
          BoxShadow(
            color: AppColors.blackTransparent10,
            blurRadius: 6,
            spreadRadius: -1,
            offset: Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CardImage(imagePath: item.imagePath ?? ''),
          Padding(
            padding: EdgeInsets.all(10.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name ?? '',
                  style: AppTextStyles.font14RichBlackWeight600.copyWith(
                    fontSize: 13.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 4.h),
                Text(
                  item.restaurantName ?? '',
                  style: AppTextStyles.font12CoolGrayWeight400.copyWith(
                    fontSize: 12.sp,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6.h),
                RatingRow(rating: item.rating ?? 0),
                SizedBox(height: 6.h),
                PriceAndQuantityRow(item: item),
                SizedBox(height: 12.h),
                AddToCartButton(onTap: () => onAddToCart?.call(item)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
