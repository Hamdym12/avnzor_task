import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/domain/entities/store_addon_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddonItemCard extends StatelessWidget {
  const AddonItemCard({super.key, required this.addon, this.onAdd});

  final StoreAddonEntity addon;
  final VoidCallback? onAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.w,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.xxl16),
        border: Border.all(color: AppColors.gray100, width: 1.r),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackTransparent7,
            blurRadius: 10,
            spreadRadius: -2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 1.2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(AppRadius.xxl16),
                topRight: Radius.circular(AppRadius.xxl16),
              ),
              child: Image.asset(addon.imagePath, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        addon.name,
                        style: AppTextStyles.font12RichBlackWeight600.copyWith(
                          color: AppColors.slate900,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'SAR ${addon.priceSar.toStringAsFixed(addon.priceSar % 1 == 0 ? 0 : 1)}',
                        style: AppTextStyles.font14PrimaryPomegranateBold
                            .copyWith(
                              fontSize: 12.sp,
                              color: AppColors.burntOrange,
                              fontWeight: FontWeight.bold,
                            ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: onAdd,
                  child: Container(
                    width: 26.r,
                    height: 26.r,
                    margin: EdgeInsets.only(top: 4.h),
                    decoration: const BoxDecoration(
                      gradient: AppGradients.orangeGradient,
                      borderRadius: BorderRadius.all(Radius.circular(14)),
                    ),
                    child: Icon(
                      Icons.add_rounded,
                      color: AppColors.white,
                      size: 16.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
