import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_constance.dart';
import '../../domain/entites/movie_details.dart';

class MovieDetailsImageCover extends StatelessWidget {
  const MovieDetailsImageCover({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(10.0),
      ),
      child: CachedNetworkImage(
        height: 210.0,
        width: MediaQuery.of(context).size.width,
        imageUrl: getImageUrl(movie.backdropPath),
        fit: BoxFit.cover,
      ),
    );
  }
}
