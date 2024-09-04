import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neon_widgets/neon_widgets.dart';
import 'package:top_movies/core/utils/app_colors.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_image.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_right_side.dart';

class MovieUpcomingItem extends StatelessWidget {
  const MovieUpcomingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return NeonContainer(
      lightBlurRadius: 10,
      lightSpreadRadius: 2,
      spreadColor: AppColors.primaryColor.withOpacity(0.7),
      borderColor: AppColors.gradient1.withOpacity(0.7),
      borderWidth: 2,
      child: const Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
            MovieUpcomingImage(),
            Gap(12),
            MovieUpcomingRightSide(),
          ],
        ),
      ),
    );
  }
}
