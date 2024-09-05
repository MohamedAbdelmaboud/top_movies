import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import 'movie_details_widget.dart';

class MovieDetailsIconsRow extends StatelessWidget {
  const MovieDetailsIconsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: FadeInUp(
        from: 20,
        duration: const Duration(milliseconds: 500),
        child: const IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MovieDetailsWidget(
                icon: Icons.calendar_today_outlined,
                text: '2021',
              ),
              VerticalDivider(
                color: AppColors.greyColor,
                thickness: 1.5,
              ),
              MovieDetailsWidget(
                icon: Icons.access_time_rounded,
                text: '1 h 35 m',
              ),
              VerticalDivider(
                color: AppColors.greyColor,
                thickness: 1.5,
              ),
              MovieDetailsWidget(
                icon: Icons.movie_filter_outlined,
                text: 'Action',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
