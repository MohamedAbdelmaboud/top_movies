import 'package:flutter/material.dart';

import 'up_coming_neon_container.dart';

class UpComingButtonWidget extends StatelessWidget {
  const UpComingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
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
        child: const Padding(
          padding: EdgeInsets.all(20.0),
          child: UpComingNeonContainer(),
        ),
      ),
    );
  }
}
