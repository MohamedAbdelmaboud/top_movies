import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:neon_widgets/neon_widgets.dart';

import '../../../../core/utils/app_colors.dart';

class OnboardingTitleWidget extends StatelessWidget {
  const OnboardingTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlickerNeonText(
          text: "Your Movie Universe",
          flickerTimeInMilliSeconds: 600,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w800,
          spreadColor: AppColors.primaryColor,
          blurRadius: 20,
          textSize: 16,
        ),
        Gap(5),
        Icon(
          Icons.movie_creation_outlined,
          color: AppColors.primaryColor,
          size: 20,
        ),
      ],
    );
  }
}
