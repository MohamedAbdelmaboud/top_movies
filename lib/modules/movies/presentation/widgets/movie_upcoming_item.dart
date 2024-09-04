import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../../../core/utils/app_colors.dart';
import '../../domain/entites/movie.dart';
import 'movie_upcoming_image.dart';
import 'movie_upcoming_right_side.dart';

class MovieUpcomingItem extends StatelessWidget {
  const MovieUpcomingItem({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      lightBlurRadius: 8,
      lightSpreadRadius: 2,
      spreadColor: AppColors.primaryColor.withOpacity(0.5),
      borderColor: AppColors.gradient1.withOpacity(0.7),
      borderWidth: 2,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            MovieUpcomingImage(
              imagePath: movie.posterPath,
            ),
            const Gap(12),
            MovieUpcomingRightSide(
              movie: movie,
            ),
          ],
        ),
      ),
    );
  }
}
