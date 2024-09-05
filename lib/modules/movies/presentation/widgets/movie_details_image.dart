import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_constance.dart';
import '../../domain/entites/movie_details.dart';
import 'movie_loading_shimmer.dart';

class MovieDetailsImage extends StatelessWidget {
  const MovieDetailsImage({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20.0,
      bottom: -60.0,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
        child: CachedNetworkImage(
          width: 100,
          height: 130,
          fit: BoxFit.cover,
          imageUrl: getImageUrl(movie.posterPath),
          placeholder: (context, url) => const MovieLoadingShimmer(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
