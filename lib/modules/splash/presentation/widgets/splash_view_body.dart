import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'animated_logo.dart';
import 'animated_title.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedLogo(),
        Gap(15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTitle(),
          ],
        ),
      ],
    );
  }
}
