import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/data/biryani_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Colored badge overlay shown at the top-left of a menu item card image.
class MenuItemBadge extends StatelessWidget {
  const MenuItemBadge({super.key, required this.badge});

  final BiryaniItemBadge badge;

  @override
  Widget build(BuildContext context) {
    if (badge == BiryaniItemBadge.none) return const SizedBox.shrink();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: _badgeColor(badge),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Text(badge.label, style: AppTextStyles.font11WhiteWeight700),
    );
  }

  Color _badgeColor(BiryaniItemBadge badge) => switch (badge) {
    BiryaniItemBadge.bestSeller => AppColors.vividOrange,
    BiryaniItemBadge.newItem => AppColors.burntOrange,
    BiryaniItemBadge.chefsPick => AppColors.primaryPomegranate,
    BiryaniItemBadge.serves4 => AppColors.slateGray,
    BiryaniItemBadge.none => Colors.transparent,
  };
}
