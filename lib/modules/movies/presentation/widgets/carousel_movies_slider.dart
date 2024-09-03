import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/core/test/dummy.dart';
import 'package:top_movies/modules/movies/presentation/widgets/slider_poster_movie_item.dart';

class CarouselMoviesSlider extends StatelessWidget {
  const CarouselMoviesSlider({
    super.key,
  });

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
}
