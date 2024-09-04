import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../core/routing/app_router.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      // isLoading: SignInCubit.get(context).state is SignInLoading,
      onPressed: () {
        // SignInCubit.get(context).signInWithEmailAndPassword();
        context.push(AppRouter.home);
      },
      text: 'Login',
    );
  }
}
