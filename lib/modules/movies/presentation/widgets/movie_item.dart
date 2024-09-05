import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_constance.dart';
import '../../domain/entites/movie.dart';
import 'movie_loading_shimmer.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({
    super.key,
    required this.movie,
  });

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: CachedNetworkImage(
        width: 140.0,
        fit: BoxFit.cover,
        imageUrl: getImageUrl(movie.posterPath),
        placeholder: (context, url) => const MovieLoadingShimmer(
          width:140
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
