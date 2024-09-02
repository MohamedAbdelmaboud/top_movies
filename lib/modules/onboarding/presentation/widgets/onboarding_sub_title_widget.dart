import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class OnboardingSubTitleWidget extends StatelessWidget {
  const OnboardingSubTitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        'Unlock a vast library of films, from action-packed thrillers to heartwarming dramas. All available at your convenience, with no fees or subscriptions required',
        textAlign: TextAlign.center,
        style: AppStyles.semiBold12,
      ),
    );
  }
}
