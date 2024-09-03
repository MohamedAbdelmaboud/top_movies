import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';

import '../../../domain/entites/movie.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  MoviesBloc(this.getNowPlayingMoviesUseCase) : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      final result = await getNowPlayingMoviesUseCase.excute();

      log(result.toString());
        
      result.fold(
        (failure) => emit(
          MoviesState(
            errorMessage: failure.errorMessage,
            status: MoviesStatus.error,
          ),
        ),
        (movies) => emit(
          MoviesState(
            movies: movies,
            status: MoviesStatus.loaded,
          ),
        ),
      );
    });
  }

}
