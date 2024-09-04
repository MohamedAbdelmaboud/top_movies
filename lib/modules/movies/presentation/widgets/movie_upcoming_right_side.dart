import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_date.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_overview.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_rate.dart';
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
        Row(
          children: [
            MovieUpcomingDate(),
            Gap(8),
            Icon(
              Icons.star,
              color: Colors.yellowAccent,
              size: 14,
            ),
            Gap(5),
            MovieUpcomingRate(),
          ],
        ),
        Gap(8),
        MovieUpcomingOverview(),
      ],
    );
  }
}
