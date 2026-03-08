import 'package:auto_route/auto_route.dart';
import 'package:avnzor_task/core/di/service_locater.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/features/search/data/models/store_addon_model.dart';
import 'package:avnzor_task/features/search/presentation/controller/search_cubit.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/addons_list.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/store_categories_list.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/menu_items_grid.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/promotion_banner.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/search_header.dart';
import 'package:avnzor_task/features/search/presentation/screens/widgets/search_top_app_bar_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage(name: 'SearchRoute')
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;
    return BlocProvider(
      create: (context) => getIt<SearchCubit>()..searchItems(''),
      child: Scaffold(
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
              toolbarHeight: isWide ? 55.h : 45.h,
              actionsPadding: EdgeInsets.zero,
            ),
            const SliverToBoxAdapter(child: SearchHeader()),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: const StoreCategoriesList(),
              ),
            ),
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                if (state is SearchLoading) {
                  return const SliverFillRemaining(
                    child: Center(child: CircularProgressIndicator()),
                  );
                } else if (state is SearchSuccess) {
                  return SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 24.h),
                      child: MenuItemsGrid(items: state.items),
                    ),
                  );
                } else if (state is SearchError) {
                  return SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Column(
                          spacing: 12.h,
                          children: [
                            Text(state.errorMessage, textAlign: TextAlign.center),
                            OutlinedButton(
                              onPressed: () {
                                context.read<SearchCubit>().searchItems('');
                              },
                              child: Text(
                                'Retry',
                                style: TextStyle(
                                  color: AppColors.primaryPomegranate,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return const SliverToBoxAdapter(child: SizedBox.shrink());
              },
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: AddonsList(
                  addons: StoreAddonModel.sampleAddons
                      .map((m) => m.toEntity())
                      .toList(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
                child: const PromotionBanner(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
