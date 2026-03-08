import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/features/search/data/biryani_addon_model.dart';
import 'package:avnzor_task/features/search/presentation/widgets/addon_item_card.dart';
import 'package:avnzor_task/features/search/presentation/widgets/addons_section_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddonsList extends StatelessWidget {
  const AddonsList({
    super.key,
    this.addons = BiryaniAddon.sampleAddons,
    this.onAdd,
  });

  final List<BiryaniAddon> addons;
  final ValueChanged<BiryaniAddon>? onAdd;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cream,
      width: MediaQuery.sizeOf(context).width,
      padding: EdgeInsets.only(top: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: const AddonsSectionHeader(),
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 165.h,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
              ).copyWith(bottom: 1.h),
              itemCount: addons.length,
              separatorBuilder: (context, index) => SizedBox(width: 12.w),
              itemBuilder: (context, index) {
                final addon = addons[index];
                return AddonItemCard(
                  addon: addon,
                  onAdd: () => onAdd?.call(addon),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
