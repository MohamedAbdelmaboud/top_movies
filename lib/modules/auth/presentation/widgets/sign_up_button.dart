import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../controller/sign_up_cubit/sign_up_cubit.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({
    super.key,
    required this.isChecked,
  });

  final ValueNotifier<bool> isChecked;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return CustomButton(
          isButtonEnabled: isChecked.value,
          isLoading: SignUpCubit.get(context).state is SignUpLoading,
          text: 'Sign Up',
          onPressed: () {
            log('sign up');
            SignUpCubit.get(context).signUpWithEmailAndPassword();
          },
        );
      },
    );
  }
}
