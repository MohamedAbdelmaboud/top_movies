import '../../../../core/routing/app_router.dart';
import '../../domain/entites/recommendation.dart';
import 'movie_recommendation_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecommendedMoviesSliverGrid extends StatelessWidget {
  const RecommendedMoviesSliverGrid({
    super.key,
    required this.recommendations,
  });

  final List<Recommendation> recommendations;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            final recommendation = recommendations[index];
            return InkWell(
              onTap: () {
                context.push(AppRouter.movieDetails, extra: recommendation.id);
              },
              child: MovieRecommendationItem(recommendation: recommendation),
            );
          },
          childCount: recommendations.length,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 12.0,
          crossAxisSpacing: 12.0,
          childAspectRatio: 0.8,
          crossAxisCount: 2,
        ),
      ),
    );
  }
}
