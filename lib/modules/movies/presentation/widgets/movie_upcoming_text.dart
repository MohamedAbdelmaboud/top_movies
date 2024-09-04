import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class MovieUpcomingText extends StatelessWidget {
  const MovieUpcomingText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .6,
      ),
      child: Text(
        title,
        style: AppStyles.bold13,
      ),
    );
  }
}
