import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/routing/app_router.dart';
import '../../../../core/utils/app_constance.dart';
import '../../domain/entites/movie_details.dart';
import '../../domain/entites/recommendation.dart';
import 'movie_details_icons_row.dart';
import 'movie_details_over_view.dart';
import 'movie_details_stack.dart';
import 'movie_details_title.dart';
import 'recommended_movies_widget.dart';

class MovieDetailsViewBody extends StatelessWidget {
  final MovieDetails movie;
  final List<Recommendation> recommendations;

  const MovieDetailsViewBody({
    super.key,
    required this.movie,
    required this.recommendations,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: const Key('movieDetailScrollView'),
      slivers: [
        MovieDetailsStack(movie: movie),
        const SliverToBoxAdapter(
          child: Gap(70),
        ),
        MovieDetailsTitle(movie: movie),
        MovieDetailsIconsRow(movie: movie),
        // const BudgetWidget(),
        MovieDetailsOverView(movie: movie),
        const RecommendedMoviesWidget(),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 24.0),
          sliver: _showRecommendations(),
        ),
      ],
    );
  }

  Widget _showRecommendations() {
    return SliverGrid(
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
    );
  }
}

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
