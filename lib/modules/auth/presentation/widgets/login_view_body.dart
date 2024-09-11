import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'create_account_row.dart';
import 'forgot_password_text_button.dart';
import 'login_button.dart';
import 'login_header.dart';
import 'or_divider_widget.dart';
import 'sign_in_form.dart';
import 'social_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          clipBehavior: Clip.none,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginHeader(),
                Gap(24),
                SignInForm(),
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
        ),
      ),
    );
  }
}
