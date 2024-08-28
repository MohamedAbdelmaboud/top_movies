import 'package:flutter/material.dart';

import '../../../core/utils/validator_helper.dart';
import 'custom_text_form_field.dart';

class LoginEmailField extends StatelessWidget {
  const LoginEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'البريد الإلكتروني',
      keyboardType: TextInputType.emailAddress,
      validator: ValidatorHelper.validateEmail,
      onSaved: (value) {
        // SignInCubit.get(context).email = value!;
      },
    );
  }
}
