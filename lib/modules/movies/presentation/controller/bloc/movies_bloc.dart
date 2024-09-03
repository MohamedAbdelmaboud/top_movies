import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';
import 'package:top_movies/modules/movies/domain/usecases/get_popular_movies_use_case.dart';
import 'package:top_movies/modules/movies/domain/usecases/get_top_rated_movies_use_case.dart';

import '../../../domain/entites/movie.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;
  MoviesBloc(
    this.getNowPlayingMoviesUseCase,
    this.getPopularMoviesUseCase,
    this.getTopRatedMoviesUseCase,
  ) : super(const MoviesState()) {
    log(state.toString());
    on<GetNowPlayingMoviesEvent>(
      (event, emit) async {
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
      },
    );
    on<GetPopularMoviesEvent>(
      (event, emit) async {
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
      },
    );
    on<GetTopRatedMoviesEvent>(
      (event, emit) async {
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
      },
    );
  }
}
