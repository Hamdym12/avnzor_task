import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    required this.controller,
    this.readOnly,
    this.onTap,
    this.suffixIcon,
    this.prefixIcon,
    this.keyboardType,
    this.focusNode,
    this.textInputAction,
  });
  final String? hintText;
  final TextEditingController controller;
  final bool? readOnly;
  final Function()? onTap;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;

    return Center(
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        cursorWidth: 1.5,
        readOnly: readOnly ?? false,
        onTap: onTap,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        onTapUpOutside: (v) => FocusScope.of(context).unfocus(),
        decoration: InputDecoration(
          fillColor: AppColors.white,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints(maxHeight: 20.w),
          contentPadding: EdgeInsets.symmetric(horizontal: 8.w),
          hintText: hintText,
          hintStyle: AppTextStyles.font14ColGray400.copyWith(
            fontSize: isWide ? 16.sp : 12.sp,
          ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          counterText: '',
        ),
        style: AppTextStyles.font14PrimaryPomegranateBold.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: isWide ? 18.sp : 14.sp,
        ),
      ),
    );
  }
}
