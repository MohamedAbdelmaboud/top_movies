import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entites/cast.dart';
import '../../domain/entites/movie_details.dart';
import '../../domain/entites/recommendation.dart';
import 'cast_members_sliver_grid.dart';
import 'more_like_this_widget.dart';
import 'movie_details_icons_row.dart';
import 'movie_details_over_view.dart';
import 'movie_details_stack.dart';
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
        SliverToBoxAdapter(
          child: Gap(MediaQuery.sizeOf(context).height * 0.05),
        ),
        MovieDetailsIconsRow(movie: movie),
        MovieDetailsOverView(movie: movie),
        const SliverToBoxAdapter(
          child: Gap(18),
        ),
        // const CastItem(),
        CastMembersSliverGrid(castMembers: castMembers),
        const MoreLikeThisWidget(),
        RecommendedMoviesSliverGrid(recommendations: recommendations),
      ],
    );
  }
}
