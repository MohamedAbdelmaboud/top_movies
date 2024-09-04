import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'svg_icon.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgIcon(
          path: Assets.assetsImagesGoogleIcon,
        ),
        SvgIcon(
          path: Assets.assetsImagesFacebookIcon,
        ),
        SvgIcon(path: Assets.assetsImagesIcons8Twitterx),
        SvgIcon(path: Assets.assetsImagesIcons8Github)
      ],
    );
  }
}
