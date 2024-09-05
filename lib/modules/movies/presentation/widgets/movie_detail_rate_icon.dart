import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie_details.dart';
import 'package:flutter/material.dart';

class MovieDetailRateIcon extends StatelessWidget {
  const MovieDetailRateIcon({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_outline_rounded,
          color: Color(0xffFF8700),
          size: 18.0,
        ),
        const Gap(4),
        Text(
          (movie.voteAverage).toStringAsFixed(1),
          style: AppStyles.semiBold13.copyWith(
            color: const Color(0xffFF8700),
          ),
        ),
      ],
    );
  }
}
