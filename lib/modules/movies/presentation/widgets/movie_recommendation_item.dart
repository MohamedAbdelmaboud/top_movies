import '../../../../core/utils/app_constance.dart';
import '../../domain/entites/recommendation.dart';
import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MovieRecommendationItem extends StatelessWidget {
  const MovieRecommendationItem({
    super.key,
    required this.recommendation,
  });

  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      from: 20,
      duration: const Duration(milliseconds: 500),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        child: CachedNetworkImage(
          imageUrl: getImageUrl(recommendation.posterPath!),
          placeholder: (context, url) => Shimmer.fromColors(
            baseColor: Colors.grey[850]!,
            highlightColor: Colors.grey[800]!,
            child: Container(
              height: 170.0,
              width: 120.0,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          height: 180.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
