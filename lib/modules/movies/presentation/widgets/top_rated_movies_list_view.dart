import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/bloc/movies_bloc.dart';
import 'movies_loading.dart';
import 'top_rated_movies_loaded.dart';

class TopRatedMoviesListView extends StatelessWidget {
  const TopRatedMoviesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        final moviesList = state.topRatedMovies;

        switch (state.popularStatus) {
          case MoviesStatus.loading:
            return const MoviesLoading();
          case MoviesStatus.error:
            return Center(
              child: Text(state.popularErrorMessage),
            );
          case MoviesStatus.loaded:
            return TopRatedMoviesLoaded(moviesList: moviesList);
        }
      },
    );
  }
}
