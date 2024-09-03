import 'package:flutter/material.dart';
import 'package:top_movies/modules/movies/presentation/widgets/poster_image_widget.dart';

class CustomShaderMask extends StatelessWidget {
  const CustomShaderMask({
    super.key,
    required this.posterPath,
  });
  final String posterPath;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (rect) {
        return const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            // fromLTRB
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.transparent,
          ],
          stops: [0, 0.3, 0.9, 1],
        ).createShader(
          Rect.fromLTRB(0, 0, rect.width, rect.height),
        );
      },
      blendMode: BlendMode.dstIn,
      child: PosterImageWidget(
        posterPath: posterPath,
      ),
    );
  }
}
