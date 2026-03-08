import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({super.key, required this.rating});

  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 2.8.w,
      children: [
        Icon(Icons.star_rounded, size: 16.sp, color: AppColors.sunflower),
        Text(
          rating.toStringAsFixed(1),
          style: AppTextStyles.font12AmberWeight600.copyWith(
            color: AppColors.richBlack
          ),
        ),
      ],
    );
  }
}
