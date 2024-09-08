import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/helpers/show_duration.dart';
import '../../../../core/utils/app_colors.dart';
import '../../domain/entites/movie_details.dart';
import 'movie_details_title.dart';
import 'movie_details_widget.dart';

class MovieDetailsIconsRow extends StatelessWidget {
  const MovieDetailsIconsRow({
    super.key,
    required this.movie,
  });
  final MovieDetails movie;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.all(16.0),
      sliver: SliverToBoxAdapter(
        child: FadeInUp(
          from: 20,
          duration: const Duration(milliseconds: 500),
          child: IntrinsicHeight(
            child: Column(
              children: [
                MovieDetailsTitle(movie: movie),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MovieDetailsWidget(
                      icon: Icons.calendar_today_outlined,
                      text: DateFormat.yMMM().format(
                        DateTime.parse(
                          movie.releaseDate,
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      color: AppColors.greyColor,
                      thickness: 1.5,
                    ),
                    MovieDetailsWidget(
                      icon: Icons.access_time_rounded,
                      text: showDuration(movie.runtime),
                    ),
                    const VerticalDivider(
                      color: AppColors.greyColor,
                      thickness: 1.5,
                    ),
                    MovieDetailsWidget(
                      icon: Icons.movie_filter_outlined,
                      // text: showGenres(movie.genres[0].name),
                      text: movie.genres[0].name,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
