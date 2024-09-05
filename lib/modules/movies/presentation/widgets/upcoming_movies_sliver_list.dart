import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/movies_bloc/movies_bloc.dart';
import 'up_coming_movies_loaded.dart';
import 'upcoming_movies_loading.dart';

class UpcomingMoviesSliverList extends StatelessWidget {
  const UpcomingMoviesSliverList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final moviesList = state.upcomingMovies;
        switch (state.upcomingStatus) {
          case MoviesStatus.loading:
            return const UpcomingMoviesLoading();
          case MoviesStatus.error:
            return SliverToBoxAdapter(
              child: Center(
                child: Text(state.popularErrorMessage),
              ),
            );
          case MoviesStatus.loaded:
            return UpComingMoviesLoaded(moviesList: moviesList);
        }
      },
    );
  }
}
