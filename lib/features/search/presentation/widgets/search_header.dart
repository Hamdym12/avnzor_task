import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/presentation/widgets/background_layer.dart';
import 'package:avnzor_task/features/search/presentation/widgets/hero_headline.dart';
import 'package:avnzor_task/features/search/presentation/widgets/rating_pill.dart';
import 'package:avnzor_task/features/search/presentation/widgets/search_bar.dart';
import 'package:avnzor_task/features/search/presentation/widgets/stats_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.paddingOf(context).top),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 12.h,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Stack(
              alignment: AlignmentDirectional.center,
              fit: StackFit.passthrough,
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
                        padding: EdgeInsets.symmetric(
                          vertical: 3.h,
                          horizontal: 6.w,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11),
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
                            Text(
                              'Cart',
                              style: AppTextStyles.font12WhiteWeight600,
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
                          textStyle: AppTextStyles.font10RichBlackWeight700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: 320.h,
            child: Stack(
              children: [
                const BackgroundLayer(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                  ).copyWith(top: 20.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const RatingPill(),
                      SizedBox(height: 16.h),
                      const HeroHeadline(),
                      SizedBox(height: 10.h),
                      Text(
                        'Hot, authentic biryani delivered in minutes.\nStraight from the dum pot to your door.',
                        textAlign: TextAlign.center,
                        style: AppTextStyles.font14WhiteTransparent85Weight400
                            .copyWith(height: 1.5),
                      ),
                      SizedBox(height: 24.h),
                      const SearchBarWidget(),
                      SizedBox(height: 16.h),
                      const StatsRow(),
                    ],
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
