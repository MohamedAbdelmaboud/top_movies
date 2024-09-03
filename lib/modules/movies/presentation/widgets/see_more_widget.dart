import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/core/utils/app_styles.dart';

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
            style: AppStyles.medium14.copyWith(
              letterSpacing: 0.15,
            ),
          ),
          const Gap(5),
          const Icon(
            Icons.arrow_forward_ios,
            size: 12.0,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
