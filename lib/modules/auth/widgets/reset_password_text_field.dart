import 'package:flutter/material.dart';

import 'custom_text_form_field.dart';

class ResetPasswordTextField extends StatelessWidget {
  const ResetPasswordTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomTextFormField(
      labeltext: 'رقم الهاتف',
      keyboardType: TextInputType.phone,
    );
  }
}
