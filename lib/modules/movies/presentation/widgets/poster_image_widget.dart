import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_constance.dart';

class PosterImageWidget extends StatelessWidget {
  const PosterImageWidget({
    super.key,
    required this.posterPath,
  });
  final String posterPath;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
      child: CachedNetworkImage(
        height: 560.0,
        width: double.infinity,
        imageUrl: getImageUrl(posterPath),
        fit: BoxFit.cover,
      ),
    );
  }
}
