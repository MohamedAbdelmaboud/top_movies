import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class MovieUpcomingRate extends StatelessWidget {
  const MovieUpcomingRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '5.5',
      style: AppStyles.bold12,
    );
  }
}