import '../../../../core/utils/app_styles.dart';
import '../../domain/entites/movie_details.dart';
import '../views/movies_details_view.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'movie_details_status.dart';

class MovieDetailsOverViewRow extends StatelessWidget {
  const MovieDetailsOverViewRow({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Bounce(
          child: Text(
            'Overview'.toUpperCase(),
            style: AppStyles.medium16,
          ),
        ),
        const Spacer(),
        MovieDetailsStatus(movie: movie)
      ],
    );
  }
}
