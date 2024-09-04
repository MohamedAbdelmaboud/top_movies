import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_constance.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_loading_shimmer.dart';

class MovieUpcomingImage extends StatelessWidget {
  const MovieUpcomingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(8.0),
      ),
      child: CachedNetworkImage(
        width: 100.0,
        height: 150,
        fit: BoxFit.cover,
        imageUrl: getImageUrl('/zKpLzzX1va6gkMJiI9p3DudqChe.jpg'),
        placeholder: (context, url) =>
            const MovieLoadingShimmer(), // TODO: Add MovieLoadingShimmer instead of this

        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
