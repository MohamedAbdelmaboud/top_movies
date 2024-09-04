import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entites/movie.dart';
import 'movie_upcoming_date_and_rate.dart';
import 'movie_upcoming_overview.dart';
import 'movie_upcoming_text.dart';

class MovieUpcomingRightSide extends StatelessWidget {
  const MovieUpcomingRightSide({super.key, required this.movie});
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        MovieUpcomingText(
          title: movie.title,
        ),
        const Gap(8),
        MovieUpcomingDateAndRate(
          movie: movie,
        ),
        const Gap(8),
        MovieUpcomingOverview(
          overview: movie.overview,
        ),
      ],
    );
  }
}
