import 'package:flutter/material.dart';
import 'package:top_movies/modules/movies/presentation/widgets/custom_shader_mask.dart';
import 'package:top_movies/modules/movies/presentation/widgets/now_playing_poster_widget.dart';

class SliderPosterMovieItem extends StatelessWidget {
  const SliderPosterMovieItem({
    super.key,
    required this.posterPath,
  });
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('openMovieMinimalDetail'),
      onTap: () {
        /// TODO : NAVIGATE TO MOVIE DETAILS
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomShaderMask(
            posterPath: posterPath,
          ),
          const NowPlayingPosterWidget(),
        ],
      ),
    );
  }
}
