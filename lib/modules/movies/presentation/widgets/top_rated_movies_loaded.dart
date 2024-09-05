import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/entites/movie.dart';
import 'movie_item.dart';

class TopRatedMoviesLoaded extends StatelessWidget {
  const TopRatedMoviesLoaded({
    super.key,
    required this.moviesList,
  });

  final List<Movie> moviesList;

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        height: 200.0,
        child: ListView.separated(
          separatorBuilder: (context, index) => const Gap(12),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemCount: moviesList.length,
          itemBuilder: (context, index) {
            final movie = moviesList[index];
            return InkWell(
              onTap: () {
                context.push(AppRouter.movieDetails, extra: movie.id);
              },
              child: MovieItem(movie: movie),
            );
          },
        ),
      ),
    );
  }
}
