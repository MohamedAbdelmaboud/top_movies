import '../../domain/entites/movie_details.dart';
import 'movie_details_over_view_row.dart';
import 'movie_details_over_view_text.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MovieDetailsOverView extends StatelessWidget {
  const MovieDetailsOverView({
    super.key,
    required this.movie,
  });

  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: FadeInUp(
        from: 20,
        duration: const Duration(milliseconds: 500),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MovieDetailsOverViewRow(movie: movie),
              const Gap(8),
              MovieDetailsOverViewText(movie: movie),
            ],
          ),
        ),
      ),
    );
  }
}
