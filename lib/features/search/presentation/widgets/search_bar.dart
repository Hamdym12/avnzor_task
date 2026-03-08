import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/core/widgets/app_text_field.dart';
import 'package:avnzor_task/features/search/presentation/widgets/find_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.xxl16),
        boxShadow: [
          const BoxShadow(
            color: AppColors.blackTransparent18,
            blurRadius: 24,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: AppTextField(
              controller: TextEditingController(),
              hintText: 'Search biryani, chicken biryani, mutton biryani…',
              prefixIcon: Padding(
                padding: EdgeInsetsDirectional.only(start: 12.w),
                child: Icon(
                  Icons.search_rounded,
                  size: 18.sp,
                  color: AppColors.coolGray,
                ),
              ),
            ),
          ),
          Container(width: 1, height: 28.h, color: AppColors.gray200),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 3.w,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 12.sp,
                  color: AppColors.vividOrange,
                ),
                Text('Riyadh', style: AppTextStyles.font11Gray700Weight500),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(4.r), child: const FindButton()),
        ],
      ),
    );
  }
}
