import 'package:flutter/material.dart';

import '../../../core/utils/app_images.dart';
import 'auth_button.dart';

class LoginWithApple extends StatelessWidget {
  const LoginWithApple({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AuthButton(
      text: 'أبل',
      iconPath: Assets.assetsImagesApplIcon,
    );
  }
}
