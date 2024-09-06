import 'package:flutter/material.dart';

import '../../domain/entites/movie_details.dart';
import 'movie_detail_rate_widget.dart';
import 'movie_details_image.dart';
import 'movie_details_image_cover.dart';

class MovieDetailsStack extends StatelessWidget {
  const MovieDetailsStack({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomLeft,
          children: [
            MovieDetailsImageCover(movie: movie),
            MovieDetailsImage(movie: movie),
            MovieDetailRateWidget(movie: movie),
          ],
        ),
      ),
    );
  }
}
