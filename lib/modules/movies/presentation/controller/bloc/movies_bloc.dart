import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entites/movie.dart';
import '../../../domain/usecases/get_now_playing_movies_use_case.dart';
import '../../../domain/usecases/get_popular_movies_use_case.dart';
import '../../../domain/usecases/get_top_rated_movies_use_case.dart';
import '../../../domain/usecases/get_upcoming_movies_use_case.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  final GetUpcomingMoviesUseCase getUpcomingMoviesUseCase;

  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
    this.getUpcomingMoviesUseCase,
  ) : super(const MoviesState()) {
    // log(state.toString());
    on<GetNowPlayingMoviesEvent>(
      _getNowPlayingMovies,
    );
    on<GetPopularMoviesEvent>(
      _getPopularMovies,
    );
    on<GetTopRatedMoviesEvent>(
      _getTopRatedMovies,
    );
    on<GetUpcomingMoviesEvent>(
      _getUpcomingMovies,
    );
  }

/*










*/

// methods to get movies
  FutureOr<void> _getNowPlayingMovies(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase.excute();
    result.fold(
      (failure) => emit(
        state.copyWith(
          nowPlayingErrorMessage: failure.errorMessage,
          nowPlayingstatus: MoviesStatus.error,
        ),
      ),
      (movies) => emit(
        state.copyWith(
          nowPlayingMovies: movies,
          nowPlayingstatus: MoviesStatus.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getPopularMovies(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase.excute();
    result.fold(
      (failure) => emit(
        state.copyWith(
          popularErrorMessage: failure.errorMessage,
          popularStatus: MoviesStatus.error,
        ),
      ),
      (movies) => emit(
        state.copyWith(
          popularMovies: movies,
          popularStatus: MoviesStatus.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getTopRatedMovies(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase.excute();
    result.fold(
      (failure) => emit(
        state.copyWith(
          topRatedErrorMessage: failure.errorMessage,
          topRatedStatus: MoviesStatus.error,
        ),
      ),
      (movies) => emit(
        state.copyWith(
          topRatedMovies: movies,
          topRatedStatus: MoviesStatus.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getUpcomingMovies(
      GetUpcomingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getUpcomingMoviesUseCase.excute();
    result.fold(
      (failure) => emit(
        state.copyWith(
          topRatedErrorMessage: failure.errorMessage,
          topRatedStatus: MoviesStatus.error,
        ),
      ),
      (movies) => emit(
        state.copyWith(
          topRatedMovies: movies,
          topRatedStatus: MoviesStatus.loaded,
        ),
      ),
    );
  }
}
