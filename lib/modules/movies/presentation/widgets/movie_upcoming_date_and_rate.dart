import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entites/movie.dart';
import 'movie_upcoming_date.dart';
import 'movie_upcoming_rate.dart';

class MovieUpcomingDateAndRate extends StatelessWidget {
  const MovieUpcomingDateAndRate({
    super.key,
    required this.movie,
  });
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MovieUpcomingDate(
          releaseDate: movie.releaseDate,
        ),
        const Gap(8),
        const Icon(
          Icons.star,
          color: Color(0xffFF8700),
          size: 14,
        ),
        const Gap(5),
        MovieUpcomingRate(
          voteAvg: movie.voteAverage,
        ),
      ],
    );
  }
}
