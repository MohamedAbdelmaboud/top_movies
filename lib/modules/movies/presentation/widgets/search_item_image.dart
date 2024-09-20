import '../../../../core/utils/api_constance.dart';
import '../../domain/entites/movie.dart';
import 'movie_loading_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchItemImage extends StatelessWidget {
  const SearchItemImage({
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
        width: 95.0,
        height: 120,
        fit: BoxFit.cover,
        imageUrl: getImageUrl(movie.posterPath),
        placeholder: (context, url) => const MovieLoadingShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
