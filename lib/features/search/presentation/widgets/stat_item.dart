import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatItem extends StatelessWidget {
  const StatItem({super.key, required this.value, required this.label});
  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: AppTextStyles.font16WhiteWeight700.copyWith(
            letterSpacing: -0.3,
          ),
        ),
        SizedBox(height: 2.h),
        Text(label, style: AppTextStyles.font12WhiteTransparent80Weight400),
      ],
    );
  }
}
