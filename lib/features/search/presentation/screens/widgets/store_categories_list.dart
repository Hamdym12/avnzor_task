import 'package:avnzor_task/features/search/data/models/store_category_model.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/categories_section_header.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/category_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreCategoriesList extends StatefulWidget {
  const StoreCategoriesList({super.key, this.onViewAll, this.onCategoryTap});

  final VoidCallback? onViewAll;
  final ValueChanged<String>? onCategoryTap;

  @override
  State<StoreCategoriesList> createState() => _StoreCategoriesListState();
}

class _StoreCategoriesListState extends State<StoreCategoriesList> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 12.h,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: CategoriesSectionHeader(onViewAll: widget.onViewAll),
        ),
        SizedBox(
          height: 44.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
            itemCount: StoreCategoryModel.categories.length,
            separatorBuilder: (_, __) => SizedBox(width: 10.w),
            itemBuilder: (context, index) {
              final category = StoreCategoryModel.categories[index];
              return CategoryChip(
                emoji: category.emoji,
                label: category.label,
                isSelected: _selectedIndex == index,
                onTap: () {
                  setState(() => _selectedIndex = index);
                  widget.onCategoryTap?.call(category.label);
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
