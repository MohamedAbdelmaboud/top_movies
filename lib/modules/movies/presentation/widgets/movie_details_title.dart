import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

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
    return Positioned(
      left: 130,
      right: 0,
      bottom: -65,
      child: FadeInUp(
        from: 20,
        duration: const Duration(milliseconds: 500),
        child: Column(
          children: [
            Text(
              movie.title,
              style: AppStyles.bold16,
            ),
            const SizedBox(height: 4),
            Text(
              movie.tagline,
              style: AppStyles.bold10,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
