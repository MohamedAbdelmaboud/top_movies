import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_date.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_rate.dart';

class MovieUpcomingDateAndRate extends StatelessWidget {
  const MovieUpcomingDateAndRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
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
    );
  }
}
