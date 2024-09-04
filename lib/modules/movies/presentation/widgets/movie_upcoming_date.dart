import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class MovieUpcomingDate extends StatelessWidget {
  const MovieUpcomingDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.red,
      ),
      child: Text(
        'Jan 2024',
        style: AppStyles.bold10,
      ),
    );
  }
}
