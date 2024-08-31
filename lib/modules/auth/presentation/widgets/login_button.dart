import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

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
      },
      text: 'Login',
    );
  }
}
