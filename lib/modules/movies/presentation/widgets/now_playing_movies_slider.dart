import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/core/utils/app_styles.dart';
import 'package:top_movies/modules/movies/presentation/controller/bloc/movies_bloc.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movies_loaded_slider.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movies_loading_slider.dart';

class NowPlayingMoviesSlider extends StatelessWidget {
  const NowPlayingMoviesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final moviesList = state.movies;

        switch (state.status) {
          case MoviesStatus.loading:
            return const MoviesLoadingSlider();
          case MoviesStatus.error:
            return Center(
              child: Text(state.errorMessage),
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
