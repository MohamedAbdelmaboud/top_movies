import '../../domain/entites/movie_details.dart';
import 'movie_detail_rate_icon.dart';
import 'movie_details_image_cover.dart';
import 'package:flutter/material.dart';

class MovieDetailRateWidget extends StatelessWidget {
  const MovieDetailRateWidget({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 14,
      bottom: 14,
      child: Container(
        alignment: Alignment.center,
        width: 65,
        height: 24,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: ShapeDecoration(
          color: const Color.fromARGB(81, 17, 18, 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: MovieDetailRateIcon(movie: movie),
      ),
    );
  }
}
