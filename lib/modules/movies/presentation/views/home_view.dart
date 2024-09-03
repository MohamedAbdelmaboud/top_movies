import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/movies/presentation/widgets/now_playing_movies_slider.dart';
import 'package:top_movies/modules/movies/presentation/widgets/popular_movies_list_view.dart';
import 'package:top_movies/modules/movies/presentation/widgets/popular_movies_row.dart';
import 'package:top_movies/modules/movies/presentation/widgets/top_rated_movies_row.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        key: Key('movieScrollView'),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NowPlayingMoviesSlider(),
              PopularMoviesRow(),
              PopularMoviesListView(),
              TopRatedMoviesRow(),
              PopularMoviesListView(), //TODO: Change this to TopRatedMoviesListView
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
