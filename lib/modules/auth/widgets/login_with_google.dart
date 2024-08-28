import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'auth_button.dart';

class LoginWithGoogle extends StatelessWidget {
  const LoginWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      // isLoading: SignInCubit.get(context).state is SignInGoogleLoading,
      text: 'جوجل',
      iconPath: Assets.assetsImagesGoogleIcon,
      onTap: () {
        // SignInCubit.get(context).signInWithGoogle();
      },
    );
  }
}
