import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/modules/auth/presentation/widgets/header_title.dart';

import '../../../../core/utils/app_images.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Image.asset(
            Assets.assetsImagesAppLogo,
            height: 100,
          ),
          const Gap(15),
          const HeaderTitle(
            fontSize: 14,
          ),
        ],
      ),
    );
  }
}
