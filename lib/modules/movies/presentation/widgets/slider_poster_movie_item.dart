import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/entites/movie.dart';
import 'custom_shader_mask.dart';
import 'now_playing_poster_widget.dart';

class SliderPosterMovieItem extends StatelessWidget {
  const SliderPosterMovieItem({
    super.key,
    required this.movie,
  });
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: const Key('openMovieMinimalDetail'),
      onTap: () {
          context.push(AppRouter.movieDetails, extra: movie.id);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CustomShaderMask(
            posterPath: movie.posterPath,
          
          ),
          const NowPlayingPosterWidget(),
        ],
      ),
    );
  }
}
