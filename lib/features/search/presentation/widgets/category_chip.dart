import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.emoji,
    required this.label,
    this.isSelected = false,
    this.onTap,
  });

  final String emoji;
  final String label;
  final bool isSelected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.cream : AppColors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: isSelected
                ? AppColors.primaryPomegranate
                : AppColors.gray200,
            width: 1,
          ),
          boxShadow: const [
            BoxShadow(
              color: AppColors.blackTransparent7,
              blurRadius: 3,
              spreadRadius: 0,
              offset: Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 6.w,
          children: [
            Text(emoji, style: TextStyle(fontSize: 15.sp)),
            Text(
              label,
              style: isSelected
                  ? AppTextStyles.font13PrimaryWeight600
                  : AppTextStyles.font13RichBlackWeight500.copyWith(
                      color: AppColors.gray700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
