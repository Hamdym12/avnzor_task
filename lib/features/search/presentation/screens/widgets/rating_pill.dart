import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingPill extends StatelessWidget {
  const RatingPill({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isWide ? 18.w : 14.w,
        vertical: isWide ? 10.h : 8.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteTransparent20,
        borderRadius: BorderRadius.circular(99),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 4.w,
        children: [
          Icon(
            Icons.star_rounded,
            size: isWide ? 20.sp : 16.sp,
            color: AppColors.sunflower,
          ),
          Text(
            'Rated #1 Biryani Delivery in Saudi Arabia',
            style: AppTextStyles.font12WhiteWeight600.copyWith(
              fontSize: isWide ? 16.sp : 12.sp,
            ),
          ),
        ],
      ),
    );
  }
}
