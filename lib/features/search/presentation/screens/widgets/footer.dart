import 'package:avnzor_task/core/constants/app_radius.dart';
import 'package:avnzor_task/core/theming/app_colors.dart';
import 'package:avnzor_task/core/theming/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      color: AppColors.slate900,
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 60.h),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('🍛', style: TextStyle(fontSize:30.sp)),
                        SizedBox(width: 10.w),
                        Text(
                          'BiryaniHub',
                          style: AppTextStyles.font22WhiteWeight800.copyWith(
                            fontSize: 20.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24.h),
                    Text(
                      'Authentic biryani delivered hot to your\ndoorstep. Made with love using\ntraditional recipes and the finest spices.',
                      style: AppTextStyles.font14WhiteTransparent85Weight400
                          .copyWith(height: 1.6),
                    ),
                    SizedBox(height: 30.h),
                    const _SocialLinks(),
                  ],
                ),
              ),
              const Expanded(
                child: _FooterSection(
                  title: 'Contact Us',
                  items: [
                    _FooterItem(
                      icon: Icons.location_on_outlined,
                      label: 'King Fahd Road, Riyadh, Saudi Arabia',
                    ),
                    _FooterItem(
                      icon: Icons.phone_outlined,
                      label: '+966 50 123 4567',
                    ),
                    _FooterItem(
                      icon: Icons.email_outlined,
                      label: 'hello@biryanihub.sa',
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: _FooterSection(
                  title: 'Delivery Areas',
                  items: [
                    _FooterItem(label: 'Riyadh', isBullet: true),
                    _FooterItem(label: 'Jeddah', isBullet: true),
                    _FooterItem(label: 'Dammam', isBullet: true),
                    _FooterItem(label: 'Mecca', isBullet: true),
                    _FooterItem(label: 'Medina', isBullet: true),
                    _FooterItem(label: 'Khobar', isBullet: true),
                    _FooterItem(label: 'Abha', isBullet: true),
                  ],
                ),
              ),
              const Expanded(
                child: _FooterSection(
                  title: 'Get Our App',
                  children: [
                    Text(
                      'Download BiryaniHub and get exclusive\napp-only deals.',
                      style: TextStyle(
                        color: AppColors.whiteTransparent85,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: 20),
                    _AppStoreButton(
                      icon: Icons.apple,
                      title: 'Download on the',
                      subtitle: 'App Store',
                    ),
                    SizedBox(height: 12),
                    _AppStoreButton(
                      icon: Icons.play_arrow_rounded,
                      title: 'Get it on',
                      subtitle: 'Google Play',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60.h),
          const Divider(color: AppColors.whiteTransparent20, thickness: 1),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '© 2026 BiryaniHub. All rights reserved.',
                style: AppTextStyles.font12WhiteTransparent80Weight400,
              ),
              Row(
                children: [
                  const _BottomNavLink(label: 'Privacy Policy'),
                  SizedBox(width: 24.w),
                  const _BottomNavLink(label: 'Terms of Service'),
                  SizedBox(width: 24.w),
                  const _BottomNavLink(label: 'Refund Policy'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _FooterSection extends StatelessWidget {
  final String title;
  final List<_FooterItem>? items;
  final List<Widget>? children;

  const _FooterSection({required this.title, this.items, this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.font16WhiteWeight700.copyWith(fontSize: 16.sp),
        ),
        SizedBox(height: 24.h),
        if (items != null)
          ...items!.map(
            (item) => Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: item,
            ),
          ),
        if (children != null) ...children!,
      ],
    );
  }
}

class _FooterItem extends StatelessWidget {
  final IconData? icon;
  final String label;
  final bool isBullet;

  const _FooterItem({this.icon, required this.label, this.isBullet = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (icon != null) ...[
          Icon(icon, color: AppColors.amber, size: 20.sp),
          SizedBox(width: 12.w),
        ],
        if (isBullet) ...[
          Container(
            margin: EdgeInsets.only(top: 6.h),
            width: 5.w,
            height: 5.w,
            decoration: const BoxDecoration(
              color: AppColors.amber,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 12.w),
        ],
        Expanded(
          child: Text(
            label,
            style: AppTextStyles.font14WhiteTransparent85Weight400.copyWith(
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }
}

class _SocialLinks extends StatelessWidget {
  const _SocialLinks();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const _SocialIcon(icon: Icons.facebook),
        SizedBox(width: 12.w),
        const _SocialIcon(icon: Icons.camera_alt_outlined),
        SizedBox(width: 12.w),
        const _SocialIcon(icon: Icons.flutter_dash),
        SizedBox(width: 12.w),
        const _SocialIcon(icon: Icons.play_circle_outline),
      ],
    );
  }
}

class _SocialIcon extends StatefulWidget {
  final IconData icon;
  const _SocialIcon({required this.icon});

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _isHovered
              ? AppColors.vividOrange
              : AppColors.whiteTransparent20,
          gradient: _isHovered
              ? const LinearGradient(
                  colors: [AppColors.vividOrange, AppColors.burntOrange],
                )
              : null,
        ),
        child: Icon(widget.icon, color: AppColors.white, size: 18.sp),
      ),
    );
  }
}

class _AppStoreButton extends StatefulWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _AppStoreButton({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  State<_AppStoreButton> createState() => _AppStoreButtonState();
}

class _AppStoreButtonState extends State<_AppStoreButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.xl14),
          border: Border.all(
            color: _isHovered ? AppColors.amber : AppColors.whiteTransparent20,
            width: 1,
          ),
          color: _isHovered ? AppColors.whiteTransparent20 : Colors.transparent,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(widget.icon, color: AppColors.amber, size: 24.sp),
            SizedBox(width: 12.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: AppColors.whiteTransparent80,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.subtitle,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _BottomNavLink extends StatefulWidget {
  final String label;
  const _BottomNavLink({required this.label});

  @override
  State<_BottomNavLink> createState() => _BottomNavLinkState();
}

class _BottomNavLinkState extends State<_BottomNavLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Text(
        widget.label,
        style: AppTextStyles.font12WhiteTransparent80Weight400.copyWith(
          color: _isHovered ? AppColors.white : AppColors.whiteTransparent80,
          decoration: _isHovered ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
