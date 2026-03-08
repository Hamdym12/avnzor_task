import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingPill extends StatelessWidget {
  const RatingPill({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: AppColors.whiteTransparent20,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4.w,
        children: [
          Icon(Icons.star_rounded, size: 16.sp, color: AppColors.sunflower),
          Text(
            'Rated #1 Biryani Delivery in Saudi Arabia',
            style: AppTextStyles.font12WhiteWeight600,
          ),
        ],
      ),
    );
  }
}
