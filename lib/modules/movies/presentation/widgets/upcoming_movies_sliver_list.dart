import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movie_upcoming_item.dart';

class UpcomingMoviesSliverList extends StatelessWidget {
  const UpcomingMoviesSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      separatorBuilder: (BuildContext context, int index) {
        return const Gap(25);
      },
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return FadeInLeftBig(
          onFinish: (direction) {
            debugPrint('Finish $direction');
          },
          duration: Duration(milliseconds: 150 * index),
          child: const MovieUpcomingItem(),
        );
      },
    );
  }
}
