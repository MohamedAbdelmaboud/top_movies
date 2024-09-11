import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/show_custom_snack_bar.dart';
import '../../../../core/routing/app_router.dart';
import '../controller/bloc/sign_in_bloc/sign_in_bloc.dart';
import '../widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<SignInBloc, SignInState>(
        listener: (context, state) {
          if (state is SigninSuccess) {
            showCustomSnackBar(
              context,
              'Login done Successfully',
            );
            context.go(AppRouter.home);
          }
          if (state is SignInFailure) {
            showCustomSnackBar(
              context,
              state.message,
              isError: true,
            );
          }
        },
        builder: (context, state) {
          return const LoginViewBody();
        },
      ),
    );
  }
}
