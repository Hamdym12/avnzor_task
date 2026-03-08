import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchTopAppBarContent extends StatelessWidget {
  const SearchTopAppBarContent({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w).copyWith(
        top: isWide ? 3.h : 0,
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
                  size: isWide ? 18.sp : 15.sp,
                ),
                Text(
                  'Riyadh, Saudi Arabia',
                  style: AppTextStyles.font12SlateGrayWeight500.copyWith(
                    fontSize: isWide ? 15.sp : 13.sp,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              spacing: 3.w,
              children: [
                Text('🍛', style: TextStyle(fontSize: isWide ? 20.sp : 18.sp)),
                Text(
                  'BiryaniHub',
                  style: AppTextStyles.font14PrimaryPomegranateBold.copyWith(
                    fontSize: isWide ? 18.sp : 15.sp,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 8.w,
              children: [
                if (isWide)
                Container(
                  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 8.w),
                  decoration: BoxDecoration(
                    color: AppColors.cream,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    spacing: 3.w,
                    children: [
                      Icon(
                          Icons.access_time_rounded,
                          color: AppColors.fieryRed,
                          size: 18.sp,
                      ),
                      Text(
                        '30 min delivery',
                        style: AppTextStyles.font13RichBlackWeight500
                            .copyWith(
                          fontSize: 16.sp,
                          color: AppColors.fieryRed,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: isWide ? 5.h : 3.h,
                        horizontal: isWide ? 10.w : 6.w,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
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
                            size: isWide ? 16.sp : 13.sp,
                          ),
                          Text(
                            'Cart',
                            style: AppTextStyles.font12WhiteWeight600.copyWith(
                              fontSize: isWide ? 15.sp : 13.sp,
                            ),
                          ),
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
                        textStyle: AppTextStyles.font10RichBlackWeight700.copyWith(
                          fontSize: isWide ? 12.sp : 10.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
