import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 38.h,
      decoration: BoxDecoration(
        gradient: AppGradients.orangeRedGradient,
        borderRadius: BorderRadius.circular(AppRadius.xl14),
      ),
      child: ElevatedButton.icon(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          backgroundColor: Colors.transparent,
          foregroundColor: AppColors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppRadius.xl14),
          ),
        ),
        icon: Icon(
          Icons.shopping_cart_outlined,
          size: 14.sp,
          color: AppColors.white,
        ),
        label: Text(
          'Add to Cart',
          style: AppTextStyles.font13PrimaryWeight600.copyWith(
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
