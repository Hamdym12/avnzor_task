import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/domain/entities/store_item_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Colored badge overlay shown at the top-left of a menu item card image.
class MenuItemBadge extends StatelessWidget {
  const MenuItemBadge({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.vividOrange,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text('Best Seller', style: AppTextStyles.font11WhiteWeight700),
    );
  }
}
