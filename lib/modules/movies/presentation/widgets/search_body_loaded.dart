import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routing/app_router.dart';
import '../../domain/entites/movie.dart';
import 'search_item.dart';

class SearchBodyLoaded extends StatelessWidget {
  const SearchBodyLoaded({super.key, required this.movies});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 22),
        separatorBuilder: (context, index) => const Gap(12),
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return InkWell(
            onTap: () {
              context.push(AppRouter.movieDetails, extra: movie.id);
            },
            child: SearchItem(movie: movie),
          );
        },
      ),
    );
  }
}
