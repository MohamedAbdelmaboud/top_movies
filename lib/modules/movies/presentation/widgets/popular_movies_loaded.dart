import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/domain/entites/movie.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_item.dart';

class PopularMoviesLoaded extends StatelessWidget {
  const PopularMoviesLoaded({
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
                /// TODO : NAVIGATE TO  MOVIE DETAILS
              },
              child: MovieItem(movie: movie),
            );
          },
        ),
      ),
    );
  }
}