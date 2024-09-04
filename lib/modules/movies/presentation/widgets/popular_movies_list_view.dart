import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/modules/movies/presentation/controller/bloc/movies_bloc.dart';
import 'package:top_movies/modules/movies/presentation/widgets/movies_loading.dart';
import 'package:top_movies/modules/movies/presentation/widgets/popular_movies_loaded.dart';

class PopularMoviesListView extends StatelessWidget {
  const PopularMoviesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoviesBloc, MoviesState>(
      builder: (context, state) {
        print('PopularMoviesListView build');
        
        
        final moviesList = state.popularMovies;
        switch (state.popularStatus) {
          case MoviesStatus.loading:
            return const MoviesLoading();
          case MoviesStatus.error:
            return Center(
              child: Text(state.popularErrorMessage),
            );
          case MoviesStatus.loaded:
            return PopularMoviesLoaded(moviesList: moviesList);
        }
      },
    );
  }
}
