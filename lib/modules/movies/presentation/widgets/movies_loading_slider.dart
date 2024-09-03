import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:top_movies/modules/movies/presentation/widgets/now_playing_movies_slider.dart';
import 'package:top_movies/modules/movies/presentation/widgets/slider_shimmer.dart';

class MoviesLoadingSlider extends StatelessWidget {
  const MoviesLoadingSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: generateCarouselOptions(context),
      items: List.generate(
        5,
        (index) => const SliderShimmer(),
      ),
    );
  }
}
