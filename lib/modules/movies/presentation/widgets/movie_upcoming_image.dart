import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/api_constance.dart';
import 'movie_loading_shimmer.dart';

class MovieUpcomingImage extends StatelessWidget {
  const MovieUpcomingImage({super.key, required this.imagePath});
  final String? imagePath;
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
        imageUrl: getImageUrl(imagePath),
        placeholder: (context, url) => const MovieLoadingShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
