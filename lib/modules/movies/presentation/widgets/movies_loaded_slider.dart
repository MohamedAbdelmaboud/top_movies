import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/modules/movies/domain/entites/movie.dart';
import 'package:top_movies/modules/movies/presentation/widgets/now_playing_movies_slider.dart';
import 'package:top_movies/modules/movies/presentation/widgets/slider_poster_movie_item.dart';

class MoviesLoadedSlider extends StatelessWidget {
  const MoviesLoadedSlider({
    super.key,
    required this.moviesList,
  });

  final List<Movie> moviesList;

  @override
  Widget build(BuildContext context) {
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
}
