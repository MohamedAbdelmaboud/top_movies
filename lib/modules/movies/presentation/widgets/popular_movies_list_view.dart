import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/core/test/dummy.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_item.dart';

class PopularMoviesListView extends StatelessWidget {
  const PopularMoviesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(milliseconds: 500),
      child: SizedBox(
        height: 170.0,
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
