import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/features/search/presentation/widgets/background_layer.dart';
import 'package:avnzor_task/features/search/presentation/widgets/hero_headline.dart';
import 'package:avnzor_task/features/search/presentation/widgets/rating_pill.dart';
import 'package:avnzor_task/features/search/presentation/widgets/search_bar.dart';
import 'package:avnzor_task/features/search/presentation/widgets/stats_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 320.h,
      child: Stack(
        children: [
          const BackgroundLayer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w).copyWith(top: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const RatingPill(),
                SizedBox(height: 16.h),
                const HeroHeadline(),
                SizedBox(height: 10.h),
                Text(
                  'Hot, authentic biryani delivered in minutes.\nStraight from the dum pot to your door.',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.font14WhiteTransparent85Weight400
                      .copyWith(height: 1.5),
                ),
                SizedBox(height: 24.h),
                const SearchBarWidget(),
                SizedBox(height: 16.h),
                const StatsRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
