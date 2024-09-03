import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:top_movies/modules/movies/presentation/controller/bloc/movies_bloc.dart';
import 'package:top_movies/modules/movies/presentation/widgets/slider_poster_movie_item.dart';

class NowPlayingMoviesSlider extends StatelessWidget {
  const NowPlayingMoviesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final moviesList = state.movies;

        if (state.status == MoviesStatus.loading) {
          // Display shimmer effect while loading
          return CarouselSlider(
            options: generateCarouselOptions(context),
            items: List.generate(
              5,
              (index) => Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.white,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 560.0,
                  width: double.infinity,
                ),
              ),
            ),
          );
        } else if (state.status == MoviesStatus.error) {
          // Display error message if there's an error
          return Center(
            child: Text(state.errorMessage),
          );
        } else if (state.status == MoviesStatus.loaded &&
            moviesList.isNotEmpty) {
          // Display the carousel with movie posters once data is loaded
          return CarouselSlider(
            options: generateCarouselOptions(context),
            items: moviesList.map(
              (item) {
                return SliderPosterMovieItem(
                  posterPath: item.posterPath,
                );
              },
            ).toList(),
          );
        }

        // Handle any other cases (e.g., empty list)
        return const Center(child: Text("No movies available"));
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
