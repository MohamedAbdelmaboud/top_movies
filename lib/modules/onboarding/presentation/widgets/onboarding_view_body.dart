import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import 'onboarding_sub_title_widget.dart';
import 'onboarding_title_widget.dart';
import 'welcome_button_widget.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Gap(35),
        Image.asset(
          Assets.assetsImagesOnboarding,
          fit: BoxFit.fill,
        ),
        const Gap(30),
        const OnboardingTitleWidget(),
        const Gap(10),
        const OnboardingSubTitleWidget(),
        const Gap(20),
        const WelcomeButtonWidget(),
      ],
    );
  }
}
