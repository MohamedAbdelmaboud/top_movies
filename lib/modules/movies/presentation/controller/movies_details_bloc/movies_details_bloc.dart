import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/entites/movie_details.dart';
import '../../../domain/entites/recommendation.dart';
import '../../../domain/usecases/get_movie_details_use_case.dart';
import '../../../domain/usecases/get_recommendation_movies_use_case.dart';
import '../movies_bloc/movies_bloc.dart';

part 'movies_details_event.dart';
part 'movies_details_state.dart';

class MoviesDetailsBloc extends Bloc<MoviesDetailsEvent, MoviesDetailsState> {
  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationMoviesUseCase getRecommendationMoviesUseCase;
  MoviesDetailsBloc(
    this.getMovieDetailsUseCase,
    this.getRecommendationMoviesUseCase,
  ) : super(const MoviesDetailsState()) {
    on<GetMoviesDetailsEvent>(_getMovieDetails);
    on<GetMoviesRecommendationsEvent>(_getRecommendationMovies);
  }

  FutureOr<void> _getMovieDetails(
      GetMoviesDetailsEvent event, Emitter<MoviesDetailsState> emit) async {
    final result = await getMovieDetailsUseCase.excute(event.movieId);
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
    final result = await getRecommendationMoviesUseCase.excute(event.movieId);
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
}
