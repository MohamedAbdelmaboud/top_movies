import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
    required this.currentSelectedIndex,
    required this.onTap,
  });
  final void Function(int)? onTap;

  final int currentSelectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: [
              Color(0xff7D4199),
              Color(0xff19A1BE),
            ],
          ),
          width: 2,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: AppColors.scaffoldBg,
        onTap: onTap,
        elevation: 0,
        currentIndex: currentSelectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: AppColors.primaryColor,
        selectedLabelStyle: AppStyles.bold12,
        items: [
          buildBottomNavigationBarItem(
            label: "Home",
            iconPath: Assets.assetsImagesHome,
          ),
          buildBottomNavigationBarItem(
            label: "Search",
            iconPath: Assets.assetsImagesSearch,
          ),
          buildBottomNavigationBarItem(
            label: "Profile",
            iconPath: Assets.assetsImagesUser,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      {required String label, required String iconPath}) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
      ),
      activeIcon: Center(
        child: SvgPicture.asset(
          iconPath,
          colorFilter: const ColorFilter.mode(
            AppColors.primaryColor,
            BlendMode.srcIn,
          ),
        ),
      ),
      label: label,
    );
  }
}
