import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:avnzor_task/features/search/presentation/widgets/biryani_categories_list.dart';
import 'package:avnzor_task/features/search/presentation/widgets/menu_items_grid.dart';
import 'package:avnzor_task/features/search/presentation/widgets/search_header.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'SearchRoute')
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SearchHeader()),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: const BiryaniCategoriesList(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 24.h),
              child: const MenuItemsGrid(),
            ),
          ),
        ],
      ),
    );
  }
}
