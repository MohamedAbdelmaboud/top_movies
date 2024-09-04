import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'now_playing_icon.dart';
import 'now_playing_poster_text.dart';

class NowPlayingPosterWidget extends StatelessWidget {
  const NowPlayingPosterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -15,
      left: 0,
      right: 0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShakeX(
              infinite: true,
              duration: const Duration(milliseconds: 2000),
              child: const NowPlayingIcon(),
            ),
            const Gap(4),
            const NowPlayingPosterText(),
          ],
        ),
      ),
    );
  }
}
