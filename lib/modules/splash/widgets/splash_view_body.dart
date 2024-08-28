import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/splash/widgets/animated_title.dart';

import 'animated_logo.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AnimatedLogo(),
        Gap(15),
        AnimatedTitle(),
      ],
    );
  }
}
