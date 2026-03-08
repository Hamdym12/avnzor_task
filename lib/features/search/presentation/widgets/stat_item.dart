import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatItem extends StatelessWidget {
  const StatItem({super.key, required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;

    return Column(
      children: [
        Text(
          value,
          style: AppTextStyles.font16WhiteWeight700.copyWith(
            fontSize: isWide ? 24.sp : 16.sp,
            letterSpacing: -0.3,
          ),
        ),
        SizedBox(height: 2.h),
        Text(
          label,
          style: AppTextStyles.font12WhiteTransparent80Weight400.copyWith(
            fontSize: isWide ? 16.sp : 12.sp,
          ),
        ),
      ],
    );
  }
}
