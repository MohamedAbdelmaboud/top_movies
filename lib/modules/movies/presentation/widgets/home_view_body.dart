import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/now_playing_movies_slider.dart';
import 'package:top_movies/modules/movies/presentation/widgets/popular_movies_list_view.dart';
import 'package:top_movies/modules/movies/presentation/widgets/popular_movies_row.dart';
import 'package:top_movies/modules/movies/presentation/widgets/top_rated_movies_row.dart';

import 'top_rated_movies_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      key: Key('movieScrollView'),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NowPlayingMoviesSlider(), // done
            PopularMoviesRow(),
            PopularMoviesListView(),
            TopRatedMoviesRow(),
            TopRatedMoviesListView(),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
