import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entites/cast.dart';
import '../../../domain/entites/movie_details.dart';
import '../../../domain/entites/recommendation.dart';
import '../../../domain/usecases/get_cast_use_case.dart';
import '../../../domain/usecases/get_movie_details_use_case.dart';
import '../../../domain/usecases/get_recommendation_movies_use_case.dart';
import '../movies_bloc/movies_bloc.dart';

part 'movies_details_event.dart';
part 'movies_details_state.dart';

class MoviesDetailsBloc extends Bloc<MoviesDetailsEvent, MoviesDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationMoviesUseCase getRecommendationMoviesUseCase;
  final GetCastUseCase getCastUseCase;
  MoviesDetailsBloc(
    this.getMovieDetailsUseCase,
    this.getRecommendationMoviesUseCase,
    this.getCastUseCase,
  ) : super(const MoviesDetailsState()) {
    on<GetMoviesDetailsEvent>(_getMovieDetails);
    on<GetMoviesRecommendationsEvent>(_getRecommendationMovies);
    on<GetCastEvent>(_getcast);
  }

  FutureOr<void> _getMovieDetails(
      GetMoviesDetailsEvent event, Emitter<MoviesDetailsState> emit) async {
    final result = await getMovieDetailsUseCase.execute(event.movieId);
    result.fold(
      (failure) => emit(
        state.copyWith(
          detailsErrorMessage: failure.errorMessage,
          detailsStatus: MoviesStatus.error,
        ),
      ),
      (movieDetails) => emit(
        state.copyWith(
          movieDetails: movieDetails,
          detailsStatus: MoviesStatus.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getRecommendationMovies(GetMoviesRecommendationsEvent event,
      Emitter<MoviesDetailsState> emit) async {
    final result = await getRecommendationMoviesUseCase.execute(event.movieId);
    result.fold(
      (failure) => emit(
        state.copyWith(
          recommendationsErrorMessage: failure.errorMessage,
          recommendationsStatus: MoviesStatus.error,
        ),
      ),
      (recommendations) => emit(
        state.copyWith(
          recommendations: recommendations,
          recommendationsStatus: MoviesStatus.loaded,
        ),
      ),
    );
  }

  FutureOr<void> _getcast(
      GetCastEvent event, Emitter<MoviesDetailsState> emit) async {
    final result = await getCastUseCase.execute(event.movieId);
    result.fold(
      (failure) => emit(
        state.copyWith(
          castErrorMessage: failure.errorMessage,
          castStatus: MoviesStatus.error,
        ),
      ),
      (cast) => emit(
        state.copyWith(
          cast: cast,
          castStatus: MoviesStatus.loaded,
        ),
      ),
    );
  }
}
