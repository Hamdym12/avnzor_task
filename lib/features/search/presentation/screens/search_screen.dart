import 'package:auto_route/auto_route.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/features/search/presentation/widgets/addons_list.dart';
import 'package:avnzor_task/features/search/presentation/widgets/biryani_categories_list.dart';
import 'package:avnzor_task/features/search/presentation/widgets/menu_items_grid.dart';
import 'package:avnzor_task/features/search/presentation/widgets/promotion_banner.dart';
import 'package:avnzor_task/features/search/presentation/widgets/search_header.dart';
import 'package:avnzor_task/features/search/presentation/widgets/search_top_app_bar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'SearchRoute')
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: false,
            backgroundColor: AppColors.white,
            surfaceTintColor: Colors.transparent,
            elevation: 0,
            leadingWidth: 0,
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: const SearchTopAppBarContent(),
            toolbarHeight: 45.h,
            actionsPadding: EdgeInsets.zero,
          ),
          const SliverToBoxAdapter(child: SearchHeader()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: const BiryaniCategoriesList(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 24.h),
              child: const MenuItemsGrid(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: const AddonsList(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 24.h),
              child: const PromotionBanner(),
            ),
          ),
        ],
      ),
    );
  }
}
