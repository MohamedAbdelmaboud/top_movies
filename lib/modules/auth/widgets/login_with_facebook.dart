import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'auth_button.dart';

class LoginWithFacebook extends StatelessWidget {
  const LoginWithFacebook({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AuthButton(
      onTap: () {
        // SignInCubit.get(context).signWithFacebook();
      },
      text: 'فيسبوك',
      iconPath: Assets.assetsImagesFacebookIcon,
      // isLoading: SignInCubit.get(context).state is SignInFacebookLoading
      //     ? true
      //     : false,
    );
  }
}
