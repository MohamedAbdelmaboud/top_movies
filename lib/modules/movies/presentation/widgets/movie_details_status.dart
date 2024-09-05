import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie_details.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class MovieDetailsStatus extends StatelessWidget {
  const MovieDetailsStatus({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return ShakeX(
      child: Container(
        alignment: Alignment.center,
        width: 60,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
        ),
        child: Text(
          movie.status,
          style: AppStyles.bold9,
        ),
      ),
    );
  }
}
