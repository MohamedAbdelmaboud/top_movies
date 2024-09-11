import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/validator_helper.dart';
import '../controller/bloc/sign_in_bloc/sign_in_bloc.dart';
import 'custom_align.dart';
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
            SignInBloc.get(context).email = value!;
          },
        ),
      ],
    );
  }
}
