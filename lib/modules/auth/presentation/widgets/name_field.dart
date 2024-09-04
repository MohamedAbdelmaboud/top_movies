import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/validator_helper.dart';
import 'custom_text_form_field.dart';
import 'login_email_field.dart';

class NameField extends StatelessWidget {
  const NameField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAlign(
          text: 'Name',
        ),
        const Gap(5),
        CustomTextFormField(
          hintText: 'Enter your name',
          keyboardType: TextInputType.emailAddress,
          validator: ValidatorHelper.validateName,
          onSaved: (value) {
            // SignUpCubit.get(context).name = value!;
          },
        ),
      ],
    );
  }
}
