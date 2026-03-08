import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:avnzor_task/core/app/main_app.dart';
import 'package:avnzor_task/core/config/app_config.dart';
import 'package:avnzor_task/core/di/service_locater.dart';
import 'package:avnzor_task/core/localization/easy_localization_config.dart';
import 'package:avnzor_task/core/utils/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencyInjection();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  await AppConfig().initSystemSettings();
  if (kDebugMode) Bloc.observer = AppBlocObserver();

  runApp(
    EasyLocalizationConfig(
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = max(393.0, constraints.maxWidth);
          final height = max(852.0, constraints.maxHeight);
          return ScreenUtilInit(
            designSize: Size(width, height),
            minTextAdapt: true,
            splitScreenMode: true,
            child: const MainApp(),
          );
        },
      ),
    ),
  );
}
