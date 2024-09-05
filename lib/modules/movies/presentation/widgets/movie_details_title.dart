import '../../domain/entites/movie_details.dart';
import 'package:flutter/material.dart';

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
      bottom: -40,
      child: FadeInUp(
        from: 20,
        duration: const Duration(milliseconds: 500),
        child: Text(
          movie.title,
          style: AppStyles.bold16,
        ),
      ),
    );
  }
}
