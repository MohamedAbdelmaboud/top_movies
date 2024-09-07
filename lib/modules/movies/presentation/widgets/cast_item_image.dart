import '../../../../core/utils/app_constance.dart';
import 'movie_loading_shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CastItemImage extends StatelessWidget {
  const CastItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(99.0),
      ),
      child: CachedNetworkImage(
        fit: BoxFit.fitWidth,
        imageUrl: getImageUrl('/tEXsLuN0w1aaosb4kzf5DwT7rok.jpg'),
        placeholder: (context, url) => const MovieLoadingShimmer(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
