import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeroHeadline extends StatelessWidget {
  const HeroHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Order Fresh Biryani ',
            style: AppTextStyles.font22WhiteWeight800.copyWith(
              fontSize: isWide ? 32.sp : 22.sp,
              height: 1.25,
              letterSpacing: -0.5,
            ),
          ),
          TextSpan(
            text: 'Near You',
            style: AppTextStyles.font22WhiteWeight800.copyWith(
              fontSize: isWide ? 32.sp : 22.sp,
              color: AppColors.amber,
              height: 1.25,
              letterSpacing: -0.5,
            ),
          ),
        ],
      ),
    );
  }
}
