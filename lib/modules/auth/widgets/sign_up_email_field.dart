import 'package:flutter/material.dart';

import '../../../../core/utils/validator_helper.dart';
import 'custom_text_form_field.dart';

class SignUpEmailField extends StatelessWidget {
  const SignUpEmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      hintText: 'البريد الإلكتروني',
      keyboardType: TextInputType.emailAddress,
      validator: ValidatorHelper.validateEmail,
      onSaved: (value) {
        // SignUpCubit.get(context).email = value!;
      },
    );
  }
}
