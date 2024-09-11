import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../controller/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'create_account_row.dart';
import 'forgot_password_text_button.dart';
import 'login_button.dart';
import 'login_email_field.dart';
import 'login_header.dart';
import 'login_password_field.dart';
import 'or_divider_widget.dart';
import 'social_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Form(
        key: SignInBloc.get(context).key,
        autovalidateMode: SignInBloc.get(context).autovalidateMode,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginHeader(),
            Gap(24),
            LoginEmailField(),
            Gap(16),
            LoginPasswordField(),
            Gap(16),
            ForgotPasswordTextButton(),
            Gap(20),
            LoginButton(),
            Gap(20),
            OrDividerWidget(),
            Gap(20),
            SocialButtons(),
            Gap(20),
            CreateAccountNow(),
          ],
        ),
      ),
    );
  }
}
