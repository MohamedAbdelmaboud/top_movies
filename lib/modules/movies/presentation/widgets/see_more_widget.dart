import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Text(
            'See More',
            style: AppStyles.bold13.copyWith(
              letterSpacing: 0.15,
              color: AppColors.primaryColor,
            ),
          ),
          const Gap(2),
          Flash(
            infinite: true,
            child: const Icon(
              Icons.arrow_forward_ios,
              size: 14.0,
              color: AppColors.primaryColor,
            ),
          )
        ],
      ),
    );
  }
}
