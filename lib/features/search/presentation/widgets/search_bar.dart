import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:avnzor_task/core/widgets/app_text_field.dart';
import 'package:avnzor_task/features/search/presentation/widgets/find_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({super.key});

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _controller = TextEditingController();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isWide = MediaQuery.sizeOf(context).width >= 600;

    return Container(
      width: MediaQuery.sizeOf(context).width * 0.8,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppRadius.xxl16),
        boxShadow: const [
          BoxShadow(
            color: AppColors.blackTransparent18,
            blurRadius: 24,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: AppTextField(
              controller: _controller,
              focusNode: _focusNode,
              hintText: 'Search biryani, chicken biryani, mutton biryani…',
              textInputAction: TextInputAction.search,
              prefixIcon: Padding(
                padding: EdgeInsetsDirectional.only(start: 12.w),
                child: Icon(
                  Icons.search_rounded,
                  size: isWide ? 24.sp : 18.sp,
                  color: AppColors.coolGray,
                ),
              ),
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastEaseInToSlowEaseOut,
            child: AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: _isFocused ? 0.0 : 1.0,
              curve: Curves.fastEaseInToSlowEaseOut,
              child: !_isFocused
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 1,
                          height: 28.h,
                          color: AppColors.gray200,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6.w),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            spacing: 3.w,
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: isWide ? 16.sp : 12.sp,
                                color: AppColors.vividOrange,
                              ),
                              Text(
                                'Riyadh',
                                style: AppTextStyles.font11Gray700Weight500
                                    .copyWith(fontSize: isWide ? 14.sp : 11.sp),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            _focusNode.requestFocus();

                            /// should search for items
                          },
                          child: Padding(
                            padding: EdgeInsets.all(4.r),
                            child: const FindButton(),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
