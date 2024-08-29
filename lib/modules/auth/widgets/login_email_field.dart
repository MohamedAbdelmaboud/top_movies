import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/core/utils/app_styles.dart';

import '../../../core/utils/validator_helper.dart';
import 'custom_text_form_field.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAlign(
          text: 'Email',
        ),
        const Gap(5),
        CustomTextFormField(
          hintText: 'Enter your email',
          keyboardType: TextInputType.emailAddress,
          validator: ValidatorHelper.validateEmail,
          onSaved: (value) {
            // SignInCubit.get(context).email = value!;
          },
        ),
      ],
    );
  }
}

class CustomAlign extends StatelessWidget {
  const CustomAlign({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: AppStyles.regular13.copyWith(),
      ),
    );
  }
}
