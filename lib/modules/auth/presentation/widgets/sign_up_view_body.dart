import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import 'login_now.dart';
import 'sign_up_button.dart';
import 'sign_up_form.dart';
import 'sign_up_header.dart';
import 'terms_and_conditions_widget.dart';

class SignUpViewBody extends HookWidget {
  const SignUpViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isChecked = useState<bool>(false);

    return Center(
      child: SafeArea(
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
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
                const SignUpForm(),
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
        ),
      ),
    );
  }
}
