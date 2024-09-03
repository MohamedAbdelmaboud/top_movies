import 'package:flutter/material.dart';
import 'package:top_movies/core/utils/app_styles.dart';

class TilteTextWidet extends StatelessWidget {
  const TilteTextWidet({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.bold13.copyWith(
        letterSpacing: 0.15,
      ),
    );
  }
}
