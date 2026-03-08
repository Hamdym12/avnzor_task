import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({String? message}) async {
  await Fluttertoast.cancel();
  Fluttertoast.showToast(
    msg: message ?? '',
    toastLength: Toast.LENGTH_LONG,
    fontSize: 16,
    textColor: Colors.white,
    gravity: ToastGravity.CENTER,
    backgroundColor: AppColors.primaryPomegranate,
  );
}
