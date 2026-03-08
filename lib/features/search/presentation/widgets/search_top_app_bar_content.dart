import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTopAppBarContent extends StatelessWidget {
  const SearchTopAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
        bottom: 8.h
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Center(
            child: Row(
              spacing: 3.w,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: AppColors.vividOrange,
                  size: 14.sp,
                ),
                Text(
                  'Riyadh, Saudi Arabia',
                  style: AppTextStyles.font12SlateGrayWeight500,
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              spacing: 3.w,
              children: [
                Text('🍛', style: TextStyle(fontSize: 16.sp)),
                Text(
                  'BiryaniHub',
                  style: AppTextStyles.font14PrimaryPomegranateBold,
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 6.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    gradient: AppGradients.orangeRedGradient,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 3.w,
                    children: [
                      Icon(
                        Icons.shopping_bag_outlined,
                        color: AppColors.white,
                        size: 12.sp,
                      ),
                      Text('Cart', style: AppTextStyles.font12WhiteWeight600),
                    ],
                  ),
                ),
                Positioned(
                  top: -8,
                  right: -5,
                  child: Badge.count(
                    count: 3,
                    backgroundColor: AppColors.sunflower,
                    textColor: AppColors.richBlack,
                    textStyle: AppTextStyles.font10RichBlackWeight700,
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
