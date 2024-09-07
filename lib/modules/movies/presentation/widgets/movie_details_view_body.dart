import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entites/cast.dart';
import '../../domain/entites/movie_details.dart';
import '../../domain/entites/recommendation.dart';
import 'cast_item.dart';
import 'more_like_this_widget.dart';
import 'movie_details_icons_row.dart';
import 'movie_details_over_view.dart';
import 'movie_details_stack.dart';
import 'movie_details_title.dart';
import 'recommended_movies_sliver_grid.dart';

class MovieDetailsViewBody extends StatelessWidget {
  final MovieDetails movie;
  final List<Recommendation> recommendations;
  final List<Cast> castMembers;
  const MovieDetailsViewBody({
    super.key,
    required this.movie,
    required this.recommendations,
    required this.castMembers,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      key: const Key('movieDetailScrollView'),
      slivers: [
        MovieDetailsStack(movie: movie),
        const SliverToBoxAdapter(
          child: Gap(40),
        ),
        MovieDetailsTitle(movie: movie),
        MovieDetailsIconsRow(movie: movie),
        // const BudgetWidget(),
        MovieDetailsOverView(movie: movie),
        const SliverToBoxAdapter(
          child: Gap(18),
        ),
        // const CastItem(),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return CastItem(
                  cast: castMembers[index],
                );
              },
              childCount: 4,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              childAspectRatio: 2.2,
              crossAxisCount: 2,
            ),
          ),
        ),
        const MoreLikeThisWidget(),
        RecommendedMoviesSliverGrid(recommendations: recommendations),
      ],
    );
  }
}
