import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class MovieDetailsWidget extends StatelessWidget {
  const MovieDetailsWidget({
    super.key,
    required this.icon,
    required this.text,
    this.color = AppColors.greyColor,
  });
  final IconData icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 16,
          weight: 1,
        ),
        const Gap(4),
        Text(
          text,
          style: AppStyles.semiBold12.copyWith(
            color: color,
          ),
        )
      ],
    );
  }
}
