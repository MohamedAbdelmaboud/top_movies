import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/show_custom_snack_bar.dart';
import '../../../../core/routing/app_router.dart';
import '../controller/sign_up_cubit/sign_up_cubit.dart';
import '../widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is SignUpSuccess) {
            showCustomSnackBar(
              context,
              'Sign Up done Successfully',
            );
            context.push(AppRouter.login);
          }
          if (state is SignUpFailure) {
            showCustomSnackBar(
              context,
              state.message,
              isError: true,
            );
          }
        },
        builder: (context, state) {
          return const SignUpViewBody();
        },
      ),
    );
  }
}
