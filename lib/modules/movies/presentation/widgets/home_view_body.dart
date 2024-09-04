import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'now_playing_movies_slider.dart';
import 'popular_movies_list_view.dart';
import 'popular_movies_row.dart';
import 'top_rated_movies_list_view.dart';
import 'top_rated_movies_row.dart';
import 'up_coming_widget.dart';

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
            NowPlayingMoviesSlider(),
            Gap(20),
            UpComingButtonWidget(),
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
