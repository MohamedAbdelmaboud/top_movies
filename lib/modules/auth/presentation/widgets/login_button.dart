import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../controller/bloc/sign_in_bloc/sign_in_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return CustomButton(
          isLoading: SignInBloc.get(context).state is SignInLoading,
          onPressed: () {
            SignInBloc.get(context).add(
              SignInWithEmailAndPasswordEvent(),
            );
          },
          text: 'Login',
        );
      },
    );
  }
}
