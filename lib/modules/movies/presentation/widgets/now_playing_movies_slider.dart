import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/app_styles.dart';
import '../controller/movies_bloc/movies_bloc.dart';
import 'movies_loaded_slider.dart';
import 'movies_loading_slider.dart';

class NowPlayingMoviesSlider extends StatelessWidget {
  const NowPlayingMoviesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final moviesList = state.nowPlayingMovies;

        switch (state.nowPlayingstatus) {
          case MoviesStatus.loading:
            return const MoviesLoadingSlider();
          case MoviesStatus.error:
            return Center(
              child: Text(state.nowPlayingErrorMessage),
            );
          case MoviesStatus.loaded:
            if (moviesList.isNotEmpty) {
              return MoviesLoadedSlider(moviesList: moviesList);
            }
            break;
        }

        return Center(
          child: Text(
            "No movies available",
            style: AppStyles.medium16,
          ),
        );
      },
    );
  }
}

CarouselOptions generateCarouselOptions(BuildContext context) {
  return CarouselOptions(
    autoPlayAnimationDuration: const Duration(milliseconds: 700),
    autoPlayInterval: const Duration(seconds: 3),
    autoPlayCurve: Easing.standardAccelerate,
    autoPlay: true,
    enlargeCenterPage: true,
    height: MediaQuery.of(context).size.height * 0.45,
    onPageChanged: (index, reason) {},
  );
}
