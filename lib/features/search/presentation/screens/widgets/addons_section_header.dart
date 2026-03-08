import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddonsSectionHeader extends StatelessWidget {
  const AddonsSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Add-Ons', style: AppTextStyles.font16RichBlackWeight700),
        SizedBox(height: 4.h),
        Text(
          'Make your meal complete',
          style: AppTextStyles.font11CoolGrayWeight400.copyWith(
            color: AppColors.slateGray
          ),
        ),
      ],
    );
  }
}
