import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class MovieUpcomingText extends StatelessWidget {
  const MovieUpcomingText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Bad Boys: Ride or Die',
      style: AppStyles.bold13,
    );
  }
}
