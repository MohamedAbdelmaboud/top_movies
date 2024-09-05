import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/entites/movie.dart';
import 'movie_upcoming_item.dart';

class UpComingMoviesLoaded extends StatelessWidget {
  const UpComingMoviesLoaded({
    super.key,
    required this.moviesList,
  });

  final List<Movie> moviesList;

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(25);
      },
      itemCount: moviesList.length,
      itemBuilder: (BuildContext context, int index) {
        return FadeInLeft(
          onFinish: (direction) {
            debugPrint('Finish $direction');
          },
          duration: Duration(milliseconds: 150 * index),
          child: InkWell(
            onTap: () {
              context.push(AppRouter.movieDetails, extra: moviesList[index].id);
            },
            child: MovieUpcomingItem(
              movie: moviesList[index],
            ),
          ),
        );
      },
    );
  }
}
