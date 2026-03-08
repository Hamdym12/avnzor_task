import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FindButton extends StatelessWidget {
  const FindButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: AppColors.primaryPomegranate,
        borderRadius: BorderRadius.circular(11),
        gradient: AppGradients.amberRedGradient,
      ),
      child: Row(
        spacing: 2.w,
        children: [
          Icon(Icons.search_rounded, size: 12.sp, color: AppColors.white),
          Text(
            'Find Biryani',
            style: AppTextStyles.font11WhiteWeight600,
            maxLines: 1,
          ),
        ],
      ),
    );
  }
}
