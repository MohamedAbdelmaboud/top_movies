import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:top_movies/core/utils/app_images.dart';
import 'package:top_movies/modules/auth/presentation/widgets/sign_up_header.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.assetsImagesAppLogo,
              height: 100,
            ),
            const Gap(10),
            const SignUpHeader(),
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
            const Gap(25),
            SignUpButton(isChecked: isChecked),
            const Gap(25),
            const LoginNow(),
          ],
        ),
      ),
    );
  }
}
