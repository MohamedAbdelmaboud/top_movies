import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie_details.dart';

class MovieDetailsOverViewText extends StatelessWidget {
  const MovieDetailsOverViewText({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Bounce(
      child: Text(
        movie.overview,
        style: AppStyles.regular14.copyWith(
          color: AppColors.greyColor,
        ),
      ),
    );
  }
}
