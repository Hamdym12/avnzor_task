import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:avnzor_task/core/constants/app_insets.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get light => ThemeData(
    splashFactory: Platform.isIOS
        ? NoSplash.splashFactory
        : InkRipple.splashFactory,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: PredictiveBackPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryPomegranate,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryPomegranate,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
    ),
    brightness: Brightness.light,
    primaryColor: AppColors.primaryPomegranate,
    scaffoldBackgroundColor: AppColors.ghostWhite,
    textTheme: GoogleFonts.interTextTheme(),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryPomegranate,
      primary: AppColors.primaryPomegranate,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size(353.w, 38.h)),
        backgroundColor: const WidgetStatePropertyAll(
          AppColors.primaryPomegranate,
        ),
        side: const WidgetStatePropertyAll(BorderSide.none),
        enableFeedback: false,
        elevation: const WidgetStatePropertyAll(0),
        padding: WidgetStatePropertyAll(AppInsets.buttonH12V10),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        ),
        textStyle: WidgetStatePropertyAll(AppTextStyles.font14White600),
        foregroundColor: const WidgetStatePropertyAll(AppColors.white),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        fixedSize: WidgetStatePropertyAll(Size(80.w, 38.h)),
        backgroundColor: const WidgetStatePropertyAll(AppColors.white),
        side: WidgetStatePropertyAll(
          BorderSide(color: AppColors.gray200, width: 1.w),
        ),
        enableFeedback: false,
        elevation: const WidgetStatePropertyAll(0),
        visualDensity: VisualDensity.standard,
        shadowColor: const WidgetStatePropertyAll(AppColors.blackTransparent7),
        padding: WidgetStatePropertyAll(AppInsets.buttonH12V10),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        ),
        foregroundColor: const WidgetStatePropertyAll(AppColors.white),
        textStyle: WidgetStatePropertyAll(
          AppTextStyles.font14Gray700Weight500,
        ),
      ),
    ),
  );
}
