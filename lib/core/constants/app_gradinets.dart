import 'package:flutter/material.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';

abstract class AppGradients {
  static const LinearGradient orangeRedGradient = LinearGradient(
    colors: [Color(0xFFE8612C), Color(0xFFC0392B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient amberRedGradient = LinearGradient(
    colors: [Color(0xFFF4A430), Color(0xFFC0392B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient orangeGradient = LinearGradient(
    colors: [Color(0xFFF4A430), Color(0xFFE8612C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient darkToWarmGradient = LinearGradient(
    colors: [Color(0xFF1A0A00), Color(0xFFC0392B), Color(0xFFF4A430)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient promoBannerGradient = LinearGradient(
    colors: [Color(0xFF1A0A00), Color(0xFFC0392B), Color(0xFFF4A430)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static LinearGradient primaryOverlayGradient = LinearGradient(
    colors: [
      AppColors.primaryPomegranate.withOpacity(0.88),
      AppColors.burntOrange.withOpacity(0.75),
      const Color(0xff000000).withOpacity(0.5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static LinearGradient subtleTextureGradient = LinearGradient(
    colors: [
      Colors.black.withOpacity(0.25),
      Colors.transparent,
      Colors.black.withOpacity(0.10),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
