import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ProfileArrowButton extends StatelessWidget {
  const ProfileArrowButton({
    super.key,
    required this.iconData,
    this.onTap,
  });
  final IconData iconData;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Flash(
      // infinite: true,
      child: const Icon(
        Icons.arrow_forward_ios,
        size: 14.0,
        color: AppColors.primaryColor,
      ),
    );
  }
}
