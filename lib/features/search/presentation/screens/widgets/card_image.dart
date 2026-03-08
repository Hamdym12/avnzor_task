import 'package:avnzor_task/features/search/presentation/screens/widgets/menu_item_badge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardImage extends StatelessWidget {
  const CardImage({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1.55,
          child: Image.network(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
          Positioned(
            top: 8.h,
            left: 8.w,
            child: const MenuItemBadge(),
         ),
      ],
    );
  }
}
