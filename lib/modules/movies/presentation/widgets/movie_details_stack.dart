import '../../domain/entites/movie_details.dart';
import 'movie_detail_rate_widget.dart';
import 'movie_details_image.dart';
import 'movie_details_image_cover.dart';
import 'package:flutter/material.dart';

import 'movie_details_title.dart';

class MovieDetailsStack extends StatelessWidget {
  const MovieDetailsStack({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomLeft,
      children: [
        MovieDetailsImageCover(movie: movie),
        MovieDetailsImage(movie: movie),
        MovieDetailRateWidget(movie: movie),
        MovieDetailsTitle(movie: movie)
      ],
    );
  }
}
