import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_date_and_rate.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_overview.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_text.dart';

class MovieUpcomingRightSide extends StatelessWidget {
  const MovieUpcomingRightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        MovieUpcomingText(),
        Gap(8),
        MovieUpcomingDateAndRate(),
        Gap(8),
        MovieUpcomingOverview(),
      ],
    );
  }
}
