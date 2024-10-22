import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie_details.dart';

class MovieDetailsTitle extends StatelessWidget {
  const MovieDetailsTitle({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      from: 20,
      duration: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              movie.title,
              style: AppStyles.bold14,
              textAlign: TextAlign.center,
            ),
            const Gap(5),
            Text(
              movie.tagline,
              style: AppStyles.bold9,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
