import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesSectionHeader extends StatelessWidget {
  const CategoriesSectionHeader({super.key, this.onViewAll});

  final VoidCallback? onViewAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Search by Biryani',
          style: AppTextStyles.font16RichBlackWeight700,
        ),
        GestureDetector(
          onTap: onViewAll,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 2.w,
            children: [
              Text(
                'View all',
                style: AppTextStyles.font13PrimaryWeight600.copyWith(
                  color: AppColors.burntOrange,
                ),
              ),
              Icon(
                Icons.chevron_right_rounded,
                size: 16.sp,
                color: AppColors.burntOrange,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
