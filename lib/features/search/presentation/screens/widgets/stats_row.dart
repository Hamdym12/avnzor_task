import 'package:avnzor_task/features/search/presentation/screens/widgets/stat_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 16.w,
      children: const [
        StatItem(value: '50+', label: 'Restaurants'),
        StatItem(value: '10k+', label: 'Happy Customers'),
        StatItem(value: '30 min', label: 'Delivery'),
      ],
    );
  }
}
