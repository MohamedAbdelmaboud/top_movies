import '../controller/sign_up_cubit/sign_up_cubit.dart';
import 'name_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'sign_up_email_field.dart';
import 'sign_up_password_field.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Form(
          key: SignUpCubit.get(context).key,
          autovalidateMode: SignUpCubit.get(context).autovalidateMode,
          child: const Column(
            children: [
              SignUpNameField(),
              Gap(16),
              SignUpEmailField(),
              SignUpPasswordField(),
              Gap(16),
            ],
          ),
        );
      },
    );
  }
}
