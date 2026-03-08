import 'package:avnzor_task/core/constants/app_assets.dart';
import 'package:avnzor_task/core/constants/app_gradinets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundLayer extends StatelessWidget {
  const BackgroundLayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      constraints: BoxConstraints(minHeight: 280.h),
      decoration: const BoxDecoration(gradient: AppGradients.darkToWarmGradient),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            AppAssets.biryaniBackground,
            fit: BoxFit.cover,
            width: MediaQuery.sizeOf(context).width,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.primaryOverlayGradient,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: AppGradients.subtleTextureGradient,
            ),
          ),
        ],
      ),
    );
  }
}
