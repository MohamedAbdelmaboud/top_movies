import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_constance.dart';
import 'movie_loading_shimmer.dart';

class CastItemImage extends StatelessWidget {
  const CastItemImage({
    super.key,
    required this.profilePath,
  });
  final String profilePath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(99.0),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.fitWidth,
        imageUrl: getImageUrl(profilePath),
        placeholder: (context, url) => const MovieLoadingShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
