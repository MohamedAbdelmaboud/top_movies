import 'package:flutter/material.dart';

import '../../../../core/utils/validator_helper.dart';
import 'custom_text_form_field.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labeltext: 'الاسم كامل',
      keyboardType: TextInputType.emailAddress,
      validator: ValidatorHelper.validateName,
      onSaved: (value) {
        // SignUpCubit.get(context).name = value!;
      },
    );
  }
}
