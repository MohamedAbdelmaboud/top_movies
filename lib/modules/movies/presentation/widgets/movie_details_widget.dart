import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: AppColors.greyColor,
          size: 16,
          weight: 1,
        ),
        const Gap(4),
        Text(
          text,
          style: AppStyles.semiBold12.copyWith(
            color: AppColors.greyColor,
          ),
        )
      ],
    );
  }
}
