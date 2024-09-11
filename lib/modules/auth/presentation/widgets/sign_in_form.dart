import '../controller/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'login_email_field.dart';
import 'login_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Form(
          key: SignInBloc.get(context).key,
          autovalidateMode: SignInBloc.get(context).autovalidateMode,
          child: const Column(
            children: [
              LoginEmailField(),
              Gap(16),
              LoginPasswordField(),
              Gap(16),
            ],
          ),
        );
      },
    );
  }
}
