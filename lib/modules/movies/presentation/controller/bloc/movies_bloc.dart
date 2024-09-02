import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_movies/modules/movies/data/datasource/movie_remote_data_source.dart';
import 'package:top_movies/modules/movies/data/repository/movie_repository_impl.dart';
import 'package:top_movies/modules/movies/domain/repository/movie_repository.dart';
import 'package:top_movies/modules/movies/domain/usecases/get_now_playing_movies_use_case.dart';

import '../../../domain/entites/movie.dart';

part 'movies_event.dart';
part 'movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  MoviesBloc() : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>((event, emit) async {
      emit(const MoviesState(status: MoviesStatus.loading));
      Dio dio = Dio();
      BaseRemoteDataSource remoteDataSource = MovieRemoteDataSource(dio: dio);
      MovieRepository movieRepository =
          MovieRepositoryImpl(remoteDataSource: remoteDataSource);
      final result = await GetNowPlayingMoviesUseCase(
        movieRepository: movieRepository,
      ).excute();
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
