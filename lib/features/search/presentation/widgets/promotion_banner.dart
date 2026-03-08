import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromotionBanner extends StatelessWidget {
  const PromotionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.xxl16),
        gradient: AppGradients.promoBannerGradient,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'LIMITED TIME OFFER',
                  style: AppTextStyles.font10AmberWeight700.copyWith(
                    color: AppColors.sunflower,
                  ),
                ),
                SizedBox(height: 8.h),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: MediaQuery.sizeOf(context).width * 0.8),
                  child: Text(
                    'Get 20% OFF Your First Order',
                    style: AppTextStyles.font22WhiteWeight800.copyWith(
                      fontSize: 20.sp,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 8.h),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4.w,
                  runSpacing: 4.h,
                  children: [
                    Text(
                      'Use code',
                      style: AppTextStyles.font12WhiteWeight400.copyWith(
                        color: AppColors.whiteTransparent80,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.whiteTransparent20,
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: SelectableText(
                        'BIRYANI20',
                        style: AppTextStyles.font12WhiteWeight700,
                      ),
                    ),
                    Text(
                      'at checkout',
                      style: AppTextStyles.font12WhiteWeight400.copyWith(
                        color: AppColors.whiteTransparent80,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Material(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(11.r),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(11.r),
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 8.h,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Order Now',
                            style:
                                AppTextStyles.font13PrimaryPomegranateWeight700,
                          ),
                          SizedBox(width: 4.w),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: AppColors.primaryPomegranate,
                            size: 16.sp,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.directional(
            end: 12.w,
            top: 25.h,
            bottom: 30.h,
            textDirection: Directionality.of(context),
            child: Text(
                '🍛',
              style: TextStyle(
                fontSize: 100.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
