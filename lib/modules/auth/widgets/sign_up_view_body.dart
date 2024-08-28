import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import 'login_now.dart';
import 'name_field.dart';
import 'sign_up_button.dart';
import 'sign_up_email_field.dart';
import 'sign_up_password_field.dart';
import 'terms_and_conditions_widget.dart';

class SignUpViewBody extends HookWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Form(
        // key: SignUpCubit.get(context).formKey,
        // autovalidateMode: SignUpCubit.get(context).autovalidateMode,
        child: Column(
          children: [
            const Gap(24),
            const NameField(),
            const Gap(16),
            const SignUpEmailField(),
            const Gap(16),
            const SignUpPasswordField(),
            const Gap(16),
            TermsAndConditionsWidget(
              onChanged: (value) {
                isChecked.value = value;
              },
            ),
            const Gap(30),
            SignUpButton(isChecked: isChecked),
            const Gap(30),
            const LoginNow(),
          ],
        ),
      ),
    );
  }
}
