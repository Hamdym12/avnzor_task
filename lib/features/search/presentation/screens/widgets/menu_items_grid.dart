import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/domain/entities/store_item_entity.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/menu_item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuItemsGrid extends StatelessWidget {
  const MenuItemsGrid({super.key, required this.items, this.onAddToCart});

  final List<StoreItemEntity> items;
  final ValueChanged<StoreItemEntity>? onAddToCart;

  int _crossAxisCount(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= 1024) return 4;
    if (width >= 900) return 3;
    return 2;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: _GridSectionHeader(resultCount: items.length),
        ),
        SizedBox(height: 14.h),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _crossAxisCount(context),
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 14.h,
            mainAxisExtent: _mainAxisExtent(context),
          ),
          itemCount: items.length,
          itemBuilder: (context, index) =>
              MenuItemCard(item: items[index], onAddToCart: onAddToCart),
        ),
      ],
    );
  }

  double _mainAxisExtent(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    if (width >= 1200) return 440.h;
    if (width >= 900) return 325.h;
    return 295.h;
  }
}

class _GridSectionHeader extends StatelessWidget {
  const _GridSectionHeader({required this.resultCount});

  final int resultCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Popular Biryani Near You',
          style: AppTextStyles.font16RichBlackWeight700,
        ),
        Text(
          '$resultCount results',
          style: AppTextStyles.font13PrimaryWeight600.copyWith(
            color: AppColors.burntOrange,
          ),
        ),
      ],
    );
  }
}
