import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/validator_helper.dart';
import 'custom_text_form_field.dart';
import 'login_email_field.dart';

class LoginPasswordField extends HookWidget {
  const LoginPasswordField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isVisible = useState<bool>(true);

    return Column(
      children: [
        const CustomAlign(
          text: 'Password',
        ),
        const Gap(5),
        CustomTextFormField(
          validator: ValidatorHelper.validatePassword,
          hintText: 'Enter your password',
          obscureText: isVisible.value,
          keyboardType: TextInputType.visiblePassword,
          suffixIcon: GestureDetector(
            onTap: () {
              isVisible.value = !isVisible.value;
            },
            child: Icon(
              isVisible.value
                  ? Icons.visibility_sharp
                  : Icons.visibility_off_sharp,
              color: const Color(0xffC9CECF),
            ),
          ),
          onSaved: (value) {
            // SignInCubit.get(context).password = value!;
          },
        ),
      ],
    );
  }
}
