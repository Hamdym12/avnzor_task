import 'package:avnzor_task/features/search/data/biryani_item_model.dart';
import 'package:avnzor_task/features/search/presentation/widgets/menu_item_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.imagePath, required this.badge});

  final String imagePath;
  final BiryaniItemBadge badge;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.55,
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        if (badge != BiryaniItemBadge.none)
          Positioned(
            top: 8.h,
            left: 8.w,
            child: MenuItemBadge(badge: badge),
          ),
      ],
    );
  }
}
